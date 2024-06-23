## Jenkins

### Important tips for Jenkins

- Instead of installing Jenkins on your local machine, which involves numerous configurations and dependencies, consider using a Docker Image to run Jenkins.
- Use the following command to run Jenkins on your local machine:

```bash
docker run -p 8080:8080 -p 50000:50000 -dit --name jenkins --restart=on-failure -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk17
```

### Why do we need Jenkins Cluster (Or) Jenkins Master-Slave Architecture?

- **Jenkins Cluster** is a group of Jenkins master nodes and slave nodes.
- Consider a scenario with a Jenkins server and 1000 jobs to run. Running all jobs on a single Jenkins server consumes a lot of resources from the master node and becomes difficult to manage.

**Example:**

- Handling increased workload or parallel jobs might be challenging for a single machine, leading to slower build times.
- If the master server fails or becomes unavailable, the entire CI/CD process is disrupted.

### Pipeline in Jenkins

- Jenkins Pipeline streamlines the execution of multiple stages within a single job, simplifying the overall workflow.
- **Pre-requisites** - You need to install the `Pipeline plugin` in your Jenkins server.
- Before the installation of the Pipeline plugin, the conventional approach involved running multiple jobs to handle distinct stages of a process.
- With the installation of the Pipeline plugin, the need for managing multiple jobs is eliminated. Now, all stages can be seamlessly executed within a single job, optimizing the CI/CD pipeline.

### Jenkinsfile

- In Pipeline, we can define the stages in a file called `Jenkinsfile`.
- Jenkinsfile uses Groovy language.
- By encapsulating all stages within the Jenkinsfile, users can execute an entire workflow within a single job. This simplifies job management and enhances pipeline efficiency.
- Example of Jenkinsfile:

```groovy
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
```

### Jenkins Pipeline Triggers

- Poll SCM - It will check the changes in the repository for every x minutes we mentioned.
- If we use `Poll SCM` trigger, It will waste a lot of resources, It is better for the use cases for data backup, etc.
- So we can use `Webhook` trigger, This trigger is event-driven and activates the Jenkins job only when there is a change in the repository.
---

## GitHub Actions

Seamless Integration:
GitHub Actions seamlessly integrates with your GitHub repositories, allowing you to define workflows directly within your codebase.

No Infrastructure Management:
There's no need to manage infrastructure like EC2 instances or Jenkins servers. GitHub handles the underlying infrastructure, simplifying the setup process.

Easy Configuration:
Workflows are defined using YAML files within your repository, making it easy to version control and collaborate on CI/CD configurations.

Event-Driven Triggers:
GitHub Actions triggers workflows based on various events such as pushes, pull requests, issue comments, and more, ensuring your CI/CD pipeline responds dynamically to repository changes.


### GitHub Actions Workflow

- **Workflow** A GitHub Actions Workflow is an automated process designed to handle tasks such as building, testing, packaging, releasing, or deploying projects within your repository.
- We have to create .github/workflows directory in our repository and we have to write the workflow in a file called `YAML` file.
- Utilize triggers to initiate the Workflow. Triggers can include events such as pushes, pull requests, comments, or custom events based on your project's requirements.

### Example of GitHub Actions Workflow

```yaml
name: CI
on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]
jobs:
    build:
        runs-on: ubuntu-latest
    
        steps:
        - uses: xxxxxxxxxxxxxxxx@xx
        - name: Set up JDK 11
        uses: xxxxxxxxxxxxxxxxxx@xx
        with:
            java-version: '11'
        - name: Build with Maven
        run: mvn -B package --file pom.xml
```

### GitHub Actions Hosted Runners

- **GitHub Actions Hosted Runners** are virtual machines that are hosted by GitHub.
- We can use the GitHub Actions Hosted Runners to run our CI/CD pipeline.
- It's just like using Jenkins with EC2 instances (slave nodes).

We can always refer to the [official documentation](https://docs.github.com/en/actions) for more information.<br>

You can use this link to use already created codes for GitHub Actions: https://github.com/actions 

---

## SonarQube

- SonarQube is a code quality analysis tool that provides detailed reports on code quality metrics.
- It produces comprehensive reports highlighting various aspects of code quality.
- SonarQube stores report data in a database for easy accessibility and reference.
- Sonar Scanner is used to scan code and send analysis reports to the SonarQube server, ensuring continuous monitoring of code quality.

### How to install SonarQube?

- We Can Use Docker-Compose to launch multi container application, Here we will be launching two containers, one would be sonarqube server, second one will be DB, used by sonarqube. Find the details in `SonarQube-DockerCompose.yml`

```bash
docker-compose up -d
```

- We can access the SonarQube server using the following URL.

```
http://localhost:9000
```

- We can use the default username and password to log in to the SonarQube server.

```
username: admin
password: admin
```

You can see the below image to do the login.

![net-9](https://github.com/mathesh-me/ci-cd-dotnet-app-deployment/assets/144098846/20b90d39-025f-4900-8c3d-9e602c3c1803)


- Login to SonarQube using the default credentials.
```
Username: admin
Password: admin
```
![net-10](https://github.com/mathesh-me/ci-cd-dotnet-app-deployment/assets/144098846/a87ca754-43e7-4ac3-a159-cd8b6dba7d6e)
![net-11](https://github.com/mathesh-me/ci-cd-dotnet-app-deployment/assets/144098846/015f8636-ff1a-47e8-b578-1b3e7a5369b3)
![net-12](https://github.com/mathesh-me/ci-cd-dotnet-app-deployment/assets/144098846/4a887ab7-17bd-4a0d-8e4c-dca18d562863)

---
