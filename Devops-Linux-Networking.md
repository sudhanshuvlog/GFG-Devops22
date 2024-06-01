# DevOps

## Traditional vs DevOps

### Traditional

- **Development Team**:
  - Business Requirements -> Application Code -> Store the Code in a centralized location -> Notify the Operations Team
- **Operations Team**:
  - Download the Code from GitHub -> Perform Manual Testing -> Deploy the Application on the Server

- Involves two distinct teams: Development and Operations.
- **Development Team**: Responsible for application development.
- **Operations Team**: Responsible for testing and deploying the application.

#### How Traditional Works

The development team develops the application code and stores it in a centralized location on the Internet. They notify the operations team via email about the code completion. The operations team then downloads the code, conducts manual testing, and deploys the application to the server. This model keeps development and operations teams working separately.

#### Disadvantages of Traditional

- Manual process, leading to time-consuming tasks.
- Prone to errors.
- Longer Time to Market (TTM), making it unsuitable for fast-growing companies.

### DevOps

- **DevOps Team**:
  - Business Requirements -> Application Code -> Store the Code on GitHub -> Automated Testing -> Deploy the Application on the Server

- Consists of a single DevOps team responsible for both development and deployment.

#### How DevOps Works

DevOps is a methodology that integrates development and operations into a single team. The DevOps team collaboratively develops and deploys applications quickly and with fewer bugs.

DevOps utilizes various tools to automate the development and deployment processes, ensuring efficiency.

#### Advantages of DevOps

- Automated process, reducing time consumption.
- Less error-prone.
- Shorter Time to Market (TTM), suitable for fast-growing companies.

#### DevOps Tools

- **Git**: Version control system for code storage and change tracking.
- **Jenkins**: Continuous integration tool for automating code building, testing, and deployment.
- **Docker**: Containerization tool for automated application deployment.
- **Kubernetes**: Container orchestration tool for managing and scaling applications.
- **Ansible**: Configuration management tool for automating application configuration.
- **Terraform**: Infrastructure provisioning tool for automating infrastructure management.
- **Monitoring tools**: Grafana, Prometheus, Nagios, etc., for application and infrastructure monitoring.

---

## Git

### What is Git?

Git is a version control system used to track changes in a local development environment.

### Why Git?

Git is essential for storing code and tracking code changes.

### Basic Git Commands

- **git init**: Initializes a Git repository.
- **git status**: Checks the status of the Git repository.
- **git add**: Adds files to the staging area.

---

## Linux

### What is Linux OS?

Linux is an open-source operating system known for its free, secure, flexible, and stable nature. It is used in servers, desktops, and mobiles.

### Basic Linux Commands

- **pwd**: Prints the current working directory.
- **ls**: Lists files and directories.
- **cd**: Changes the directory.
- **mkdir**: Creates a directory.
- **touch**: Creates a file.
- **cat**: Prints the content of a file.
- **id**: Prints user and group IDs.

### Linux File System

In Linux, all files and directories are stored in the root directory (/).

### How to Install Linux OS (Any Distribution)?

1. **Bare Metal**: Install Linux OS directly on the hardware.
2. **Virtualization**: Install Linux OS on a virtual machine using tools like VirtualBox or Hyper-V.
3. **Cloud**: Install Linux OS on the cloud using providers like AWS, Azure, or GCP.
4. **Container**: Install Linux OS on containers using tools like Docker or Kubernetes.

### Hosting Apache HTTPD Web Server on Redhat Linux OS

- Use the below command to install the Apache web server on Linux OS:

```
sudo yum install -y httpd
```

- Use the below command to edit the `index.html` file:

```
sudo vi /var/www/html/index.html
```

- Use the below command to start the Apache web server:
```
sudo systemctl start httpd
```

- Use the below command to stop the Apache web server:
```
sudo systemctl stop httpd
```

### vi editor

- Use the below command to edit the file using vi editor:
```
vi <file-name>
```

- Use the below command to insert the text in the file:
```
i
```

- Use the below command to save the file:
```
:wq
```

- Use the below command to exit from the file without saving the file:
```
:q!
```
---

# Networking

## What is Networking?

Networking refers to the communication and information-sharing between two or more computers. This communication follows a set of rules known as protocols.

## Three Requirements for Devices to Communicate

1. **IP Address**
2. **Wireless or Wired Connection**
3. **Being on the Same Network**

## Meaning of "Same Network"

Devices on the same network are connected to the same router or within the same subnet.

## What is an IP Address?

- A 32-bit number uniquely identifying a device on a network (e.g., **172.16.0.0**, **13332433**).
- It can be divided into 4 octets of 8 bits each (we normally see IP in this format).
- Octets are converted to decimal numbers and separated by dots.
- IP address examples are: **172.16.1.3**, **00001010.00010000.00000001.00000011**. These two are the known forms but we can also write in decimal form like **2886735875**. It's also a valid IP address.
- Dots are nothing but a way to separate the octets. They are not part of the IP address.
- Normally computers will see the IP address in binary form without dots. Example: **00001010000100000000000100000011**.

## How to Identify Whether Two Devices Are on the Same Network

- Use a netmask to identify whether two devices are on the same network.
- Apply the `&` operator on the IP address and subnet mask to get the Network ID.
- If the results are the same for both devices, they are on the same network.

Example:
   IP Address: 172.16.1.3 (00001010.00010000.00000001.00000011)
   Subnet Mask: 255.255.0.0 (11111111.11111111.00000000.00000000)
   Network ID: 00001010.00010000.00000001.00000011


## Real-Life Scenario of Router

Consider a LAN (Local Area Network) with two computers connected. When sharing data within the network, private IP addresses are used with a Switch Device. To communicate outside the network, a router is required.

### How Router Works

- When we want to communicate with the outside network, we send the data to the router and the router sends the data to the outside network.
- First, let's say we have System-A and it wants to share data on the internet (google.com).
- Since we don't have a public IP address, we cannot communicate with google.com.
- So, we send the data to the router and the router sends the data to google.com.
- When we send data, it will automatically create a network packet. A network packet contains the source IP address, destination IP address, and the data.
- When the router receives the packet, it will change the source IP address to its own public IP address and send the packet to google.com.
- When google.com receives the packet, it will send the data to the router.
- The router will change the destination IP address to the private IP address of System-A and send the data to System-A.
- Inside the router, it has a table called the NAT/PAT table. It contains the information about the network.
- NAT stands for Network Address Translation. It is used to convert a private IP address to a public IP address and vice versa.
- This is how a router works.

## Information about AWS Amazon Linux

- We can connect to an Amazon Linux Instance via the AWS Web UI Instance Connect option. It's not available for other images.
- For other OS, you can use SSH to connect.

## Information about ICMP Protocol (Ping uses ICMP Protocol)

- ICMP is blocked by default in AWS default Security Group.
- Create/Edit an existing security group by allowing ICMP traffic in the inbound rules to ping between instances.
