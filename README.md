# TCS-Remote Internship

# Project Name:
  #### Develop a docker image using Ethereum  blockchain components and test using smart contract for Simple Bank System
   
# Prerequisites
 > use base OS as ubuntu and install docker and docker-Compose in that.

# Instructions

1. Directory Structure : 
   - Create directory called TCSProject
   - Create another directory Project inside the TCSProject
   -  Inside the Project directory create another directory Called Project_truffleapp
   
2. Create Dockerfile and Docker Compose file :
   - Inside the Project_truffleapp create `Dockerfile` to install necessory things.
   - And Inside the Project directory create Docker-Compose file named as `docker-compose.yml `
   
3. Now run docker-composer command to start container :
    ```
    docker-compose -f docker-compose.yml up -d
    ```
       
4. Install metamask chrome extension and check if ethereum client (Ganache) works! :
    - Metamask chrome extension
    - Open Metamask and configure custom private network (http://dockerhost:8545)
    - Gets a list accounts from ganache container
   and run command :
    ```  
    docker logs -f docker_ganachecli_1 
    ```
   
  5. Create a Truffle application :
     - run the below command :
     ```
     docker exec -it project_truffleapp_1 bash
     ```
     - After running this command you will be redirect to container. Inside that run the fallowing  commands :
     ```
     truffle init
     ```
       
   - after this do Manual correction to Update the truffle.js file as mentioned below (host and port are changed):
     ```
       module.exports = {
              networks: {
                  development: {
                      host: 'ganachecli',
                      port: 8545,
                      network_id: '*' // Match any network id
                  }
              }
          }
        ```
   - and add TSCBank.sol file to contract folder
   - add 2_deploy_contract.js to migration folder
   - add TSCBank.test.js to test folder then run the commands :
   
      ```     
      truffle develop
     ```
          
  - Now you will be redirect to truffle environment. Inside that run the fallowing commands :
      ```
          compile
          migrate
          test
      ```
    
 6.  if you wan See the transcation then run fallowing command in the another terminal
     ```
      testrpc
      ```
 
          
   
