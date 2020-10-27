pipeline {
   agent { docker { image 'helloworld:latest' } }
   stages {
      stage('build') {
         steps {
            sh 'mkdir build; cd build; cmake -DCMAKE_BUILD_TYPE=Debug ..; make'
         }
      }
   }

   post { 
      always { 
         cleanWs()
      }
   }
}

