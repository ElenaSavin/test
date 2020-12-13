node {
    
  stage 'Docker build'
  docker.build('demo')
 
  stage 'Docker push'
  docker.withRegistry('280259655306.dkr.ecr.us-east-1.amazonaws.com/cool_flask_first_app', 'ecr:global:AKIAUCQGG62FALYZSC2G') {
    docker.image('demo').push('latest')
  }
}
