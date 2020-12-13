node {
  stage 'Checkout'
  checkout scm
  
  stage 'Docker build'
  docker.build('demo')
 
  stage 'Docker push'
  docker.withRegistry('280259655306.dkr.ecr.us-east-1.amazonaws.com/cool_flask_first_app', 'ecr:us-east-1:test-ecr') {
    docker.image('demo').push('latest')
  }
}

