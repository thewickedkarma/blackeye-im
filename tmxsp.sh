printf "\e[0m\n"
printf "\e[0m\e[1;91m [\e[1;97m~\e[1;91m]\e[1;93m Installing Packages ....\e[0m\n"
printf "\e[0m\n"
apt update
apt upgrade -y
apt install curl -y
apt install openssh -y
apt install php -y
apt install unzip -y
printf "\e[0m\n"
printf "\e[0m\e[1;91m [\e[1;97m~\e[1;91m]\e[1;93m Setting Up Environment ....\e[0m\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
curl -LO https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
rm -rf ngrok-stable-linux-arm.zip
chmod +x ngrok
else
printf "\n \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;93m Error \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;96m Install Ngrok Manually.\e[0m\n"
exit 1
fi
else
curl -LO https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
rm -rf ngrok-stable-linux-386.zip
chmod +x ngrok
else
printf "\n \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;93m Error \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;96m Install Ngrok Manually.\e[0m\n"
exit 1
fi
fi
fi
archa=$(uname -a | grep -o 'arm' | head -n1)
arch2a=$(uname -a | grep -o 'Android' | head -n1)
if [[ $archa == *'arm'* ]] || [[ $arch2a == *'Android'* ]] ; then
curl -LO https://lxpdownloads.sgp1.digitaloceanspaces.com/cli/loclx-linux-arm.zip > /dev/null 2>&1
if [[ -e loclx-linux-arm.zip ]]; then
unzip loclx-linux-arm.zip > /dev/null 2>&1
rm -rf loclx-linux-arm.zip
chmod +x loclx
else
printf "\n \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;93m Error \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;96m Install LocalXpose Manually.\e[0m\n"
exit 1
fi
else
curl -LO https://lxpdownloads.sgp1.digitaloceanspaces.com/cli/loclx-linux-386.zip > /dev/null 2>&1 
if [[ -e loclx-linux-386.zip ]]; then
unzip loclx-linux-386.zip > /dev/null 2>&1
rm -rf loclx-linux-386.zip
chmod +x loclx


else
printf "\n \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;93m Error \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;96m Install LocalXpose Manually.\e[0m\n"
exit 1
fi
fi
fi
if [[ -d ~/.ssh ]]; then
printf ""
else
mkdir ~/.ssh
fi
chmod +x blackeye.sh
printf "|1|SVjtt9mtL4P/5lsqaielF1pJHvM=|6QmJXxfPd9A5uUaFI1RV2H4brTs= ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3lJnhW1oCXuAYV9IBdcJA+Vx7AHL5S/ZQvV2fhceOAPgO2kNQZla6xvUwoE4iw8lYu3zoE1KtieCU9yInWOVI6W/wFaT/ETH1tn55T2FVsK/zaxPiHZVJGLPPdEEid0vS2p1JDfc9onZ0pNSHLl1QusIOeMUyZ2bUMMLLgw46KOT9S3s/LmxgoJ3PocVUn5rVXz/Dng7Y8jYNe4IFrZOAUsi7hNBa+OYja6ceefpDvNDEJ1BdhbYfGolBdNA7f+FNl0kfaWru4Cblr843wBe2ckO/sNqgeAMXO/qH+SSgQxUXF2AgAw+TGp3yCIyYoOPvOgvcPsQziJLmDbUuQpnH\n|1|PiraXMKgzzt9DdPRSLAtRvRad0Y=|2W162QXfHJvKKZWIaRyZO6VFWJI= ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3lJnhW1oCXuAYV9IBdcJA+Vx7AHL5S/ZQvV2fhceOAPgO2kNQZla6xvUwoE4iw8lYu3zoE1KtieCU9yInWOVI6W/wFaT/ETH1tn55T2FVsK/zaxPiHZVJGLPPdEEid0vS2p1JDfc9onZ0pNSHLl1QusIOeMUyZ2bUMMLLgw46KOT9S3s/LmxgoJ3PocVUn5rVXz/Dng7Y8jYNe4IFrZOAUsi7hNBa+OYja6ceefpDvNDEJ1BdhbYfGolBdNA7f+FNl0kfaWru4Cblr843wBe2ckO/sNqgeAMXO/qH+SSgQxUXF2AgAw+TGp3yCIyYoOPvOgvcPsQziJLmDbUuQpnH\n" > ~/.ssh/known_hosts
printf "\e[0m\n"
printf "\e[0m\e[1;91m [\e[1;97m~\e[1;91m]\e[1;93m Installation Completed !! \e[0m\n"
printf "\e[0m\n"
sleep 2
printf "\e[0m\e[1;91m [\e[1;97m~\e[1;91m]\e[1;93m Type \e[1;96m./blackeye.sh \e[1;93mto run the script !! \e[0m\n"
printf "\e[0m\n"
printf "\e[0m\n"


