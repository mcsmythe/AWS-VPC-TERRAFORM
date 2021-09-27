## AWS VPC Creation with Terraform

This is my basic AWS VPC Terraform plan that I use for my basic foundation blueprint for my Jenins CI/CD Pipeline. I plan on refactoring with more dynamic variables rather than hard-coded inputs in the variables.tf. file but Rome wasn't built in a day so it will be added to the endless tasks list.

This Terraform project will deploy a **VPC** with an **Internet Gateway**, **2 Public Subnets**, **2 Private Subnets**, **A Public Route Table & Private Route Table, A Security Group that limits SSH to a specific ip** on a VM I use on my laptop and and finally an **EC2 launched in the public subnet** that utilizes the Linux AMI from AWS that uses Centos 7. There are a few ways to add ssh keys for aws infrasture deployment which you will need to ssh into your instance after terraform apply. 
I use ECS for my Docker Regsitry and utilize AWS CLI trying to limit exposing my security creds with AWS. I am working on integrating a few ansible playbooks/roles to configure instances with dynamic inventory. I have a few Ansible configuration roles (on github so feel free to use them) that I will integrate with my AWS VPC deployment,I will be adding that to the ever growing Tasks To Do list.

As my instructure grows for various React/Node dev projects I will explore all the bells and whisles of HA, ALBs, Bastion Hosts in the public subnet or NAT gateways and ASGs and RDS in the Private Subs, but for now this skeleton terraform VPC project sticks to my AWS budget.

**Update** I added a simple shell script that I use to install Docker, add Docker to the user group and install docker-compose. Eventually I will migrate to an Ansible Role with expanding EC2s, but sometimes I keep it simple!  
