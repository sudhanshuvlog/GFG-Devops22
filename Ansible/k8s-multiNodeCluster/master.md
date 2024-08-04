# Basic Overview of --> rhel_master.yaml

**For K8s Master Node Configuration:**

1. **Get the Master Node Private IP**: Sets the `MASTER_PRIVATE_IP` variable having the private IP address of the master node using shell commands.

2. **Define the POD_CIDR Variable**: Sets the `POD_CIDR` variable to `192.168.0.0/16` in the shell.

3. **Define the Master Node Name**: Sets the `NODENAME` variable to the short hostname of the master node using shell commands.

4. **Initialize the Kubernetes Cluster**: Initializes the Kubernetes cluster on the master node using `kubeadm init` command with various options such as `--apiserver-advertise-address`, `--apiserver-cert-extra-sans`, `--pod-network-cidr`, `--node-name`, and `--ignore-preflight-errors Swap`.

5. **Output of the Kubeadm Init Command**: Prints the output of the `kubeadm init` command for debugging purposes.

6. **Create .kube Directory**: Ensures the `.kube` directory exists in the user's home directory.

7. **Copy Admin.conf to User's .kube Directory**: Copies the `admin.conf` file from `/etc/kubernetes` to the user's `.kube/config` directory.

8. **Change Ownership of .kube/config**: Changes the ownership of the `config` file to the user.

9. **Configure the CNI using Calico**: Applies the Calico CNI (Container Network Interface) configuration using `kubectl apply` command.

10. **Generate Join Command**: Generates the join command for worker nodes to join the cluster using `kubeadm token create --print-join-command`.

11. **Copy Join Command to Local File**: Copies the join command to a local file named `join-command`.

**For Worker Node Configuration:**

1. **Copy Join Command to Server Location**: Copies the join command file from the local machine to the `/tmp` directory on the worker node.

2. **Join the Node to Cluster**: Executes the join command script to join the worker node to the Kubernetes cluster.
