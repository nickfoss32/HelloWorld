pipeline {
   agent any
   stages {
      stage('build') {
         steps {
            sh 'mkdir build; cd build; cmake -DCMAKE_TOOLCHAIN_FILE=../cmake/darwin.cmake -DCMAKE_BUILD_TYPE=Debug ..; make'
         }
      }
   }

   post { 
      always { 
         cleanWs()
      }
   }
}

