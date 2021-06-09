#!/bin/bash

PURPLE='0;35'
NC='\033[0m'
VERSAO=11

echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Olá! Eu sou o Jorge, um dos criadores do SmityAndMe e hoje irei te auxiliar na instalação da nossa solução...;"
echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Vamos precisar de alguns programinhas para tudo funcionar corretamente!;"

sleep 5

echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Irei verificar se o seu computador possui Java...;"

java -version

    if [ $? -eq 0 ]

        then

            echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Ufa! Você ja tem o Java, menos trabalho pra mim!"
                
            echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Estou instalando agora nosso executável JAR..."

            sleep 5

            wget https://github.com/Pederzini/SmityAndMe/raw/main/Aplicacao/aplicacao-smityandme/target/SmityAndMe.jar

            echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Beleza! $(tput setaf 3)$(tput setaf 7)"

            echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Para continuar com a nossa instalação, vamos fazer a instalação do nosso container com MySQL"

            echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Agora vou precisar do Docker, vou ver se você ja tem..."

            sleep 5

            clear

            docker --version

            if [ $? -eq 0 ]

                then

                        sudo systemctl start docker

                        sudo systemctl enable docker

                        docker --version

                        clear

                        echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Beleza! Achei o Docker aqui! $(tput setaf 3)皿$(tput setaf 7) "


                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Agora vou instalar a imagem do MySQL... $(tput setaf 3)$(tput setaf 7)"

                        sleep 5

                        clear

                        sudo docker pull mysql:5.7

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) MySQL prontinho para uso! $(tput setaf 3)$(tput setaf 7)"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Irei agora criar o banco de dados e as credenciais de acesso, É rapidinho..."

                        sleep 5

                        sudo docker run -d -p 3306:3306 --name ContainerSmyBD -e "MYSQL_DATABASE=SmyDB" -e "MYSQL_USER=Smy" -e "MYSQL_PASSWORD=smy100" -e "MYSQL_ROOT_PASSWORD=smy100" -e "MYSQL_ROOT_HOST=172.17.0.1" mysql:5.7

                        clear

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Suas credenciais de acesso"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) --------------------------"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Container: ContainerSmyDB"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Banco: SmyDB"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Usuário: Smy"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Senha: smy100"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) --------------------------"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Agora sim, tudo preparado para você usar nossa aplicação! Espero que goste!"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Até!!! $(tput setaf 3)$(tput setaf 7)"

                    else

                        echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Não achei o Docker aqui, mas relaxa que eu instalo rapidinho! "

                        echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Só vou atualizar seu sistema antes para não ter dor de cabeça... "

                        sleep 5

                        sudo apt update

                        echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Pronto, vou instalar o Docker... $(tput setaf 3)$(tput setaf 7) "

                        sleep 4

                        sudo apt install docker.io

                        sudo systemctl start docker

                        sudo systemctl enable docker
                        
                        clear

                        docker --version

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Pronto, com o docker ja consigo instalar a imagem do MySQL no container!"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Baixando a imagem do MySQL no nosso container ..."

                        sleep 5

                        clear

                        sudo docker pull mysql:5.7

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) MySQL prontinho para uso! $(tput setaf 3)$(tput setaf 7)"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Irei agora criar o banco de dados e as credenciais de acesso, É rapidinho..."

                        sleep 5

                        sudo docker run -d -p 3306:3306 --name ContainerSmyBD -e "MYSQL_DATABASE=SmyDB" -e "MYSQL_USER=Smy" -e "MYSQL_PASSWORD=smy100" -e "MYSQL_ROOT_PASSWORD=smy100" -e "MYSQL_ROOT_HOST=172.17.0.1" mysql:5.7

                        clear

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Suas credenciais de acesso"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) --------------------------"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Container: ContainerSmyDB"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Banco: SmyDB"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Usuário: Smy"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Senha: smy100"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) --------------------------"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Agora sim, tudo preparado para você usar nossa aplicação! Espero que goste!"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Até!!! $(tput setaf 3)$(tput setaf 7)"

                        fi

        else

            echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Não achei o Java... mas tá de boa! Consigo pegar ele pra você me um instante"

            echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Você deixa eu instalar o Java no seu sistema (S/N)?"

            read inst

            if [ \"$inst\" == \"s\" ] || [ \"$inst\" == \"S\" ]

                then

                    echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7)  Valeu por confiar! $(tput setaf 3)❤$(tput setaf 7)"

                    echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7)  Baixando..."

                    sleep 4

                    sudo add-apt-repository ppa:webupd8team/java -y

                    clear

                    echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Quase lá..."

                    sleep 3

                    sudo apt update -y

                    clear

                    if [ $VERSAO -eq 11 ]

                        then

                            echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Estou preparando tudo aqui para instalar a versão 11 do Java. Você vai precisar confirmar, fique atento ;D"

                            sudo apt install default-jre ; apt install openjdk-11-jre-headless; -y

                            clear

                            echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Temos Java no sistema agora!"

                            sleep 4

            wget https://github.com/Pederzini/SmityAndMe/raw/main/Aplicacao/aplicacao-smityandme/target/SmityAndMe.jar

            echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Beleza! $(tput setaf 3)$(tput setaf 7)"

            echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Para continuar com a nossa instalação, vamos fazer a instalação do nosso container com MySQL"

            echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Agora vou precisar do Docker, vou ver se você ja tem..."

            sleep 4

            clear

            docker --version

            if [ $? -eq 0 ]

                then

                        sudo systemctl start docker

                        sudo systemctl enable docker

                        docker --version

                        clear

                        echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Beleza! Achei o Docker aqui! $(tput setaf 3)皿$(tput setaf 7) "


                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Agora vou instalar a imagem do MySQL... $(tput setaf 3)$(tput setaf 7)"

                        sleep 3

                        clear

                        sudo docker pull mysql:5.7

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) MySQL prontinho para uso! $(tput setaf 3)$(tput setaf 7)"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Irei agora criar o banco de dados e as credenciais de acesso, É rapidinho..."

                        sleep 3

                        sudo docker run -d -p 3306:3306 --name ContainerSmyBD -e "MYSQL_DATABASE=SmyDB" -e "MYSQL_USER=Smy" -e "MYSQL_PASSWORD=smy100" -e "MYSQL_ROOT_PASSWORD=smy100" -e "MYSQL_ROOT_HOST=172.17.0.1" mysql:5.7

                        clear

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Suas credenciais de acesso"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) --------------------------"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Container: ContainerSmyDB"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Banco: SmyDB"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Usuário: Smy"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Senha: smy100"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) --------------------------"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Agora sim, tudo preparado para você usar nossa aplicação! Espero que goste!"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Até!!! $(tput setaf 3)$(tput setaf 7)"

                    else

                        echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Não achei o Docker aqui, mas relaxa que eu instalo rapidinho! "

                        echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Só vou atualizar seu sistema antes para não ter dor de cabeça... "

                        sleep 4

                        sudo apt update

                        echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Pronto, vou instalar o Docker... Aqui vai precisar da sua confirmação também :D $(tput setaf 3)$(tput setaf 7) "

                        sleep 4

                        sudo apt install docker.io

                        sudo systemctl start docker

                        sudo systemctl enable docker
                        
                        clear

                        docker --version

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Pronto, com o docker ja consigo baixar a imagem do MySQL no container!"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Baixando a imagem do MySQL no nosso container ..."

                        sleep 4

                        sudo docker pull mysql:5.7

                        clear

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) MySQL prontinho para uso! $(tput setaf 3)$(tput setaf 7)"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Irei agora criar o banco de dados e as credenciais de acesso, É rapidinho..."

                        sleep 3

                        sudo docker run -d -p 3306:3306 --name ContainerSmyBD -e "MYSQL_DATABASE=SmyDB" -e "MYSQL_USER=Smy" -e "MYSQL_PASSWORD=smy100" -e "MYSQL_ROOT_PASSWORD=smy100" -e "MYSQL_ROOT_HOST=172.17.0.1" mysql:5.7

                        clear

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Suas credenciais de acesso"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) --------------------------"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Container: ContainerSmyDB"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Banco: SmyDB"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Usuário: Smy"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Senha: smy100"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) --------------------------"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Agora sim, tudo preparado para você usar nossa aplicação! Espero que goste!"

                        echo  "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7) Até!!! $(tput setaf 3)$(tput setaf 7)"

                                fi

                            fi

                    else

                        echo "$(tput setaf 3)[Assistente SMY]:$(tput setaf 7)  Sem o Java não dá, então... Até a próxima!"

            fi  

    fi

# ===================================================================
# Todos direitos reservados para o autor: Dra. Profa. Marise Miranda.
# Sob licença Creative Commons @2020
# Podera modificar e reproduzir para uso pessoal.
# Proibida a comercialização e a exclusão da autoria.
# ===================================================================