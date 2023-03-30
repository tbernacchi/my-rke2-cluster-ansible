<h1 align="">my-RKE2-cluster-ansible 👋</h1>
<p>
</p>

> This is a RKE2 cluster deploying using Ansible.

![RKE2](/.github/assets/img/rancher-rke2.png)

<div align=>
	<img align="right" width="200px" src=/.github/assets/img/ansible-logo.png>
</div>

## Requirements
  * 5 servers - 3 RKE2servers, 2 RKE2 agents; 
  * OS - Ubuntu 20.04.4 LTS;
  * Ansible version - ansible 2.10.3;
  * ansible.utils that's in requirements.yml;
  * For firewall rules between the nodes see RKE requirements above;

If you got this error trying to install the ansible.utils:

```bash 
⇒ ansible-galaxy collection install -r requirements.yml
Starting galaxy collection install process
Process install dependency map
ERROR! Unknown error when attempting to call Galaxy at 'https://galaxy.ansible.com/api/': <urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed: unable to get local issuer certificate (_ssl.c:1123)>
```

This workaround [here](https://stackoverflow.com/questions/40684543/how-to-make-python-use-ca-certificates-from-mac-os-truststore#:~:text=Solution%20for%20MacOS%20or%20Linux%20with%20latest%20Python%20versions%20installed%20either%20as%20standalone%20or%20via%20port%20or%20brew) it worked for me.

## Usage
  * This project it's divided in three parts `roles` containing a common role `common_setup` for all of the roles;
  * To create the cluster we must first run the role `first_node` which will set up the first node and create the token needed for the remaining nodes;
  * The RKE2 version for the cluster it's setting on the command line using the argument `--extra-vars`;
  * For this lab I used [v1.23.16+rke2r1](https://github.com/rancher/rke2/releases/tag/v1.23.16%2Brke2r1); 
  * For other releases available please check https://github.com/rancher/rke2/releases;

## How to
```bash
ansible-playbook -i hosts main.yml --limit first_node --tags "first_node" --extra-vars "rke2_version=v1.23.16+rke2r1"
ansible-playbook -i hosts main.yml --limit rke2_servers --tags "rke2_servers" --extra-vars "rke2_version=v1.23.16+rke2r1"
ansible-playbook -i hosts main.yml --limit rke2_agents --tags "rke2_agents" --extra-vars "rke2_version=v1.23.16+rke2r1"
```

## Accessing the Cluster from Outside with kubectl
If everything went well there will be a copy of the `/etc/rancher/rke2/rke2.yaml` on buffer directory. To access the cluster replace 127.0.0.1 with the IP or hostname of your RKE2 server so in that way kubectl can now manage your RKE2 cluster from your workstation.

[Reference](https://docs.rke2.io/cluster_access#accessing-the-cluster-from-outside-with-kubectl) 

## Table of Contents
* **RKE2**
  * [Official Website](https://docs.rke2.io/)
  * [RKE2 requirements](https://docs.rke2.io/install/requirements)
  * [RKE2 HA](https://docs.rke2.io/install/ha)
  * [RKE2 Configuration options](https://docs.rke2.io/install/configuration) 

* **Ansible**
  * [Official Website](https://www.ansible.com)
  * [Official Docs](https://docs.ansible.com)
  * [Official Github](https://github.com/ansible/ansible)
  * [installation Guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

## Author's

👤 **Tadeu Bernacchi**
* Github: [@tbernacchi](https://github.com/tbernacchi)

## Show your support

Give a ⭐️ if this project helped you!

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
