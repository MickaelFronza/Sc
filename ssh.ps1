#!/bin/bash
echo "Criando o grupo do usuario automacao 1066"
groupadd -g 1006 automacao
echo "Criando o usuario"
useradd -c "Usuario para S.O. realizar automacao"  -u 1006 -g 1006 automacao
sleep 2
cd ~
sleep 2
echo "Criando a pasta do .ssh"
mkdir /home/automacao/.ssh
clear
sleep 2
echo "Criando o arquivo authorized_keys"
touch /home/automacao/.ssh/authorized_keys
sleep 2
clear
echo "Inserindo a chave publica"
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDPOCadomqN2AkvWLwHXbz9FjcjgN/o0Eu9pfIz5SWXeybXjDMNcdtYMR2DQW1CRuViw4RZHEnMw0qpLsZlcxpQFJ8UxrgJoFB3fF3vL6WXo35YiIn0AoweNYwKHsmrtsdYdRMA6aG46UX1uSkC8bSvMVaJWBymzEutjk8R7dHwHLh7Z8hmv9/Zo31dR7P87aYJqvCJ9NVME8srpzZ1nS+iKvzvDXqxjvFOkORzqaGrDVqOY72ACUwU6HkEMRgZ21pkYFW5SjgiaEmbS5uYOw8Cniyc+n5bTYvkdKVkE6jWFMW1IP5mBOANgABXieO2KxU2GhAYlLESQpuHHLEkOWJ/d0df1/8uDE2Fb9cqCG/DCVdRNwUUxYOU/iMS+NFMjhKEenCiickS+dtMz8UdUblAshyNN+h0OSS7wJ6kVz4qPfbE222zxydklU9n2tB4DRV/454w9qxRjUCE7KLcclDIfrOfafhlrz039ClPXjaTeJKUiS5g+DhQaG2TauVr9Js= automacao@10.100.1.176" >> /home/automacao/.ssh/authorized_keys
sleep 2
clear
cat /home/automacao/.ssh/authorized_keys
clear
echo "Corrigindo as permissoes"
cd ~
chown -R automacao.automacao /home/automacao/.ssh/
chmod g-w /home/automacao
chmod 700 /home/automacao/.ssh
chmod 600 /home/automacao/.ssh/authorized_keys
sleep 2
clear
echo "HOSTNAME"
hostname
sleep 7
clear
ip a
sleep 7
clear
echo "SCRIPT EXECUTADO COM SUCESSO!"
exit