This repository is for equal experts Problem Statement1.

The repository contains a simple Java application which outputs the string "Hello world!" and is accompanied by a unit test to check that the main application works as expected.

The jenkins directory contains an example of the Jenkinsfile (i.e. Pipeline).

It also contains a folder anmed terraform which has all the terrfaorm files used to create aws infrastructure.

Moreover, it has a file named copy.yml which is an ansible playbook used to copy file from one server to another.

To create the infrastructure we need to run below commands:-
->terraform init -input=false -no-color
->terraform plan -out equal 
->terraform apply equal

To deploy the jar file to /mnt/artefact we need to login to http://52.25.187.41:8080 and run the job equal.

Once the jar file is deployed we have to run the below command to copy the file from jenkin server to server in private dns.
ansible-playbook copy.yml 
