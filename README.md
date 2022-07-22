# Kubernetes Bare-Metal Provider 

Hello y'all!

That project is a Kubernetes bare-metal provider utilizing Terraform for cloud infraestructure providing and 
Ansible for system manage.

The main objective of this project is provide a complex construction of naked Kubernetes in the most easy way.


# How it work

For now, we have to do some manually work, but we're seek improvement in every task that 
the project have to do. We support only AWS resources for now. 

First, we gonna provide three Elastic IP's addresses in AWS for the K8S nodes (you can see here
https://www.youtube.com/watch?v=h-yOoHbH_Dw). After that, we gonna take that EIP's info and fill the fields
in hosts.yml and vars in the section of provided EIP's. After that you can run the Terraform with it normal sequence:

- terraform init

- terraform plan

- terraform apply

After the terraform provided the cloud infraestructure, we can run the Ansible to config the machines by running:

- ansible-playbook playbook.yml --private-key <yourprivatekey> -i hosts.yml -u ec2-user

After running the command and everything going right, you need copy an especifically part of ansible command line output.

Search for something like "kubeadm join" and copy the two lines without the \ and the \t, mix all the command in just one
and put sudo before all. Now you need to log in the worker instances manually and put that info in these two.

And TADA! You have an Kubernetes Bare-Metal Cluster!

Observation: that last part is some kind of "bug" that have to be fixed soon!
