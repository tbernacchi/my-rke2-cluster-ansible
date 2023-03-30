<h1 align="">my-RKE2-cluster-ansible 👋</h1>
<p>
</p>

> This is a RKE2 cluster deploying using Ansible.

![RKE2](/.github/assets/img/rancher-rke2.png)

<div align=>
	<img align="center" width="200px" src=/.github/assets/img/ansible-logo.png>
</div>

## Requirements
  * 5 servers - 3 RKE2servers, 2 RKE2 agents; 
  * OS - Ubuntu 20.04.4 LTS;
  * Ansible version - ansible 2.10.3;
  * ansible.utils that's in requirements.yml;
  * For firewall rules between the nodes see RKE requirements above;

If you got this error trying to install the ansible.utils:

`ansible-galaxy collection install -r requirements.yml
Starting galaxy collection install process
Process install dependency map
ERROR! Unknown error when attempting to call Galaxy at 'https://galaxy.ansible.com/api/': <urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed: unable to get local issuer certificate (_ssl.c:1123)>

This workaround here it worked for me.



Maybe it'll complain in the first run ``` terraform refresh && terraform apply ``` again and all should be well.


## Table of Contents
* **RKE2**
  [Official Website](https://docs.rke2.io/)
* **RKE2 requirements**
  [RKE2 requirements](https://docs.rke2.io/install/requirements)
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
