#!/bin/bash                                                                                                                  

# taken from:
# https://fatmin.com/2010/09/22/using-ssh-copy-id-to-push-ssh-key-to-authorized-keys/

echo "Please Enter Server Name :"                                                                                           
read servername                                                                                                              
ssh-copy-id -i ~/.ssh/id_rsa.pub $servername
