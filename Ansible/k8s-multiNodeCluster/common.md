# Basic Overview of  --> rhel_common.yaml

1. **Disable Swap**: Swapping is disabled using the `swapoff -a` command to prevent Kubernetes from using swap space.

2. **Add Swapoff to Crontab for Reboot**: This step ensures that swap remains disabled even after a system reboot by adding `swapoff -a` to the crontab to run at reboot.

3. **Install Required Packages**: Installs necessary packages like `iproute-tc` and `git` using the DNF package manager.

4. **Load Kernel Modules**: Loads kernel modules required for Kubernetes, specifically `overlay` and `br_netfilter`.

5. **Configure Kernel Modules**: Configures kernel modules by creating configuration files in `/etc/modules-load.d/k8s.conf` and `/etc/sysctl.d/k8s.conf` to set up required network settings.

6. **Apply Sysctl Settings**: Applies sysctl settings to the system.

7. **Disable SELinux**: Disables SELinux by setting it to permissive mode.

8. **Add Kubernetes Repository**: Adds repositories for Kubernetes and CRI-O, enabling the system to install packages from those sources.

9. **Install Kubernetes Packages**: Installs Kubernetes-related packages like `cri-o`, `kubelet`, `kubeadm`, `kubectl`, and `cri-tools` using the DNF package manager.

10. **Enable and Start CRI-O Service**: Enables and starts the CRI-O service, which is the container runtime for Kubernetes.

11. **Enable and Start Kubelet Service**: Enables and starts the Kubelet service, which is responsible for managing the state of the Kubernetes node.

