pipeline {
  agent any

  stages {
    stage('Cloner le dépôt') {
      steps {
        git url:'https://github.com/Herilanto003/cours_ci_cd.git' // remplace par ton lien
      }
    }

    stage('Build Docker image') {
      steps {
        sh 'docker build -t mon-site:latest .'
      }
    }

    stage('Déployer le conteneur') {
      steps {
        sh 'docker stop mon-site || true'
        sh 'docker rm mon-site || true'
        sh 'docker run -d --name mon-site -p 80:80 mon-site:latest'
      }
    }
  }
}
