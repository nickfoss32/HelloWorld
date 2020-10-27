pipeline {
   agent any
   stages { docker { image 'helloworld:latest' } }
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

