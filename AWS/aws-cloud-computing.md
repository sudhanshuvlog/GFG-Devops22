## Cloud Computing

### Private Cloud/Data Center Management

- Switching from the traditional model of managing private cloud and data centers, which involves buying and maintaining hardware and software, to utilizing public cloud services is a game-changer. The traditional setup demands hefty investments in infrastructure setup, maintenance, and personnel, draining both time and capital. In contrast, embracing cloud services eliminates the need for owning and managing physical infrastructure, offering scalability and cost-efficiency. This shift liberates organizations to focus resources on innovation rather than infrastructure upkeep, fostering agility and competitive edge in today's fast-paced market.

### Cloud Computing Overview

- Utilize cloud services instead of owning and maintaining hardware and software.
- AWS, Azure, GCP, etc., offer diverse cloud services.
- Leverage cloud provider services to create and deploy applications without managing underlying hardware and software.
- Eliminate concerns about hardware/software maintenance, focusing on deploying and scaling applications.

### AWS

- AWS stands for Amazon Web Services, They provide cloud services for infrastructure, storage, databases, and more.

### AWS Global Infrastructure

- AWS has multiple data centers in different regions across the world.
- AWS Global Infrastructure consists of the following components:
    - **Region**
    - **Availability Zone**
    - **Edge Location**
- Each region has multiple availability zones.
- Each availability zone has one or more data centers.
- Each data center has redundant power, networking, and connectivity.
- Edge locations are used to cache the content and to reduce the latency.

### AWS IAM

- AWS Identity and Access Management (IAM) is a web service that helps you securely control access to AWS resources.
- It allows you to manage users and their level of access to the AWS Console.
- It is used to manage the users, groups, roles, and policies.

IAM Reference: [AWS IAM](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)

### AWS Cloud - Notes & Documents

- Configuring a static website on Amazon S3 - https://docs.aws.amazon.com/AmazonS3/latest/userguide/HostingWebsiteOnS3Setup.html
- AWS ECS With FARGATE Case Study(Wombo) - https://aws.amazon.com/solutions/case-studies/wombo-case-study/
- AWS VPC - https://aws.amazon.com/solutions/case-studies/wombo-case-study/
- Deploy your WordPress App on ECS With Serverless Computing(FARGATE) - `wordpress-ECS-task-defination.json`
- AWS Policy Generator- https://awspolicygen.s3.amazonaws.com/policygen.html
- Setup CodeCommit And Authenticate with local Git - https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html
- Create a CodeBuild Project - Use `buildspec.yml` file, just change your `bucket-name` and your ECR Registry URL, Currently it is  - `730335248074.dkr.ecr.ap-south-1.amazonaws.com`, Replace this with your's.
- AWS ElasticBeanstalk (eb CLI)- https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3.html
- AWS CodePipeline - https://aws.amazon.com/codepipeline/
<img width="871" alt="image" src="https://github.com/sudhanshuvlog/GFG-Devops16/assets/124223047/462420ac-ee8b-4904-bd81-0d3f2b94ed3c">


- AWS ECS 
<img width="871" alt="image" src="https://github.com/sudhanshuvlog/GFG-Devops16/assets/124223047/57ba63af-f998-4321-8fa9-e2eaaa030c74">


- AWS ElasticBeanstalk - 
<img width="871" alt="image" src="https://github.com/sudhanshuvlog/GFG-Devops16/assets/124223047/08024fbe-c51b-4995-842c-b32a36a6bff6">



