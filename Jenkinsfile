node {
    checkout scm

    docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {

        def customImage = docker.build("ibrahimovkanan/task2")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
