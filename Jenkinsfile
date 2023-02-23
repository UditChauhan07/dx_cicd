node {
     def main 
     stage('clone repository') {
      checkout scm  
    }
     stage('Build docker Image'){
      main = docker.build("uditchauhan07/nt-1")
    }
     stage('Test Image'){
       main.inside {
         sh 'echo "TEST PASSED"'
      }  
    }
     stage('Push Image'){
       docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {            
       main.push("${env.BUILD_NUMBER}")            
       main.push("latest")   
   }
}
}