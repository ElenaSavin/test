node {
  stage 'Checkout'
  checkout scm
  
  stage 'Docker build'
  docker.build('cool_flask_first_app')
 
  stage 'Docker push'
  docker.withRegistry('https://280259655306.dkr.ecr.us-east-1.amazonaws.com/cool_flask_first_app', 'ecr:us-east-1:test-ecr') {
    docker.image('cool_flask_first_app').push('latest')
  }
}

