# Description of infrastructure components


The deployment of the platform can be done on top of Kubernetes, using Traefik as the traffic router and load balancer. ETCD is used as a distributed Key/Value store, and GlusterFS as a persistent data store for the services.

The provisioning of the infrastructure is automated using Kubespray.

The folder *kubespray* contains:
- Sample intentory files for Kubespray for the infrastructure provisioning. The folder structure should be copied into the *inventory* folder in a regular kubespray installation. The following points need to be edited for each custom deployment:
	- *hosts.yaml*: contains the list of nodes with the following information:
		- Hosts information:
			- ansible_host: IP address of the node
			- ip: same as ansible host
		- Profiles:
			- kube-master: for the nodes that will act as K8s controllers (3 at least)
			- etcd: for the nodes that will act as ETCS servers (3 at least)
			- gfs-cluster: for the nodes that will store local GlusterFS data


The folder *deployment-scripts* contains the deployment scripts to setup traefik and all the covid DP3T components and get them up and running. 
- Note that the file 'deployment-scripts/scripts/3.covid-depl.yaml' needs to be updated to point to your source docker repositories

Links:
- Kubespray: https://github.com/kubernetes-sigs/kubespray
- Traefik: https://containo.us/traefik/
- GlusterFS: https://www.gluster.org/
- ETCD: https://etcd.io/