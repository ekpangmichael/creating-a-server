## Provisioning multiple VM's with Vagrant

## About
This project provision multiple VM's using Vagrant, virtualbox and bash script, please install the Dependencies below

#### Dependencies

1. These project uses [`virtualbox`](https://www.virtualbox.org/) - Oracle VM VirtualBox is a free and open-source hosted hypervisor for x86 computers and is under development by Oracle Corporation. 
2.  [`vagrant`](https://www.vagrantup.com/) - Vagrant is an open-source software product for building and maintaining portable virtual software development environments


#### Instructions


You can get the script running in the following way:

1. Launch your virtualbox software

2. Clone the repository and cd into it
   
	  ```
    git clone https://github.com/ekpangmichael/creating-a-server.git
    
    cd into creating-a-server folder
    ```

3. Start vagrant 
    ```
    run vagrant up
    ```
4. To start Provisioning 
    ```
    run vagrant provision

    ```
5. To view the frontend on your browser
    ```
    Open http://localhost:9000
    ```
6. To view the backend on your browser
    ```
    Open http://localhost:5000
    ```
