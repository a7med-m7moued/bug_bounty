#!/usr/bin/bash


add-apt-repository ppa:longsleep/golang-backports
apt install golang-go

go version
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
source ~/.bashrc


cd Desktop

mkdir tools;cd tools

apt install dnsrecon


wget https://github.com/projectdiscovery/asnmap/releases/download/v1.0.4/asnmap_1.0.4_linux_amd64.zip
unzip asnmap_1.0.4_linux_amd64.zip
cp asnmap  /usr/bin

wget https://github.com/projectdiscovery/mapcidr/releases/download/v1.1.2/mapcidr_1.1.2_linux_amd64.zip
unzip mapcidr_1.1.2_linux_amd64.zip
cp mapcidr /usr/bin

apt install dirsearch

wget https://github.com/projectdiscovery/subfinder/releases/download/v2.6.0/subfinder_2.6.0_linux_amd64.zip
unzip subfinder_2.6.0_linux_amd64.zip
cp subfinder /usr/bin/

wget https://github.com/owasp-amass/amass/releases/download/v3.23.2/amass_Linux_amd64.zip
unzip amass_Linux_amd64.zip 
cp amass /usr/bin/

wget https://github.com/d3mondev/puredns/releases/download/v2.1.1/puredns-Linux-amd64.tgz

tar -xvzf puredns-Linux-amd64.tgz

cp puredns /usr/bin/

git clone https://github.com/guelfoweb/knock.git
cd knock
pip3 install -r requirements.txt

cd ..
git clone https://github.com/blechschmidt/massdns.git

cd massdns
apt install make
make 
cd bin
cp massdns /usr/bin/
cd ../../
cd ..
pip3 install py-altdns==1.0.2
wget https://github.com/projectdiscovery/naabu/releases/download/v2.1.6/naabu_2.1.6_linux_amd64.zip

cp naabu /usr/bin/

wget https://github.com/projectdiscovery/httpx/releases/download/v1.3.2/httpx_1.3.2_linux_amd64.zip
unzip httpx_1.3.2_linux_amd64.zip
cp httpx /usr/bin/

git clone https://github.com/LukaSikic/subzy.git
cd subzy;go build .;cp subzy /usr/bin/ ; 

cd ..

pip3 install arjun

wget https://github.com/projectdiscovery/katana/releases/download/v1.0.2/katana_1.0.2_linux_amd64.zip
unzip katana_1.0.2_linux_amd64.zip 
cp katana /usr/bin/

git clone https://github.com/bp0lr/gauplus.git
cd gauplus;go build . ;cp gauplus /usr/bin/
cd ..

wget https://github.com/tomnomnom/waybackurls/releases/download/v0.1.0/waybackurls-linux-amd64-0.1.0.tgz
tar -xvzf waybackurls-linux-amd64-0.1.0.tgz
cp waybackurls /usr/bin/
wget https://github.com/jaeles-project/gospider/releases/download/v1.1.6/gospider_v1.1.6_linux_arm64.zip
unzip gospider_v1.1.6_linux_arm64.zip
cp gospider /usr/bin/

wget https://github.com/projectdiscovery/nuclei/releases/download/v2.9.6/nuclei_2.9.6_linux_amd64.zip

unzip nuclei_2.9.6_linux_amd64.zip
cp nuclei /usr/bin/

wget https://github.com/hahwul/dalfox/releases/download/v2.9.0/dalfox_2.9.0_linux_amd64.tar.gz
tar zxf dalfox_2.9.0_linux_amd64.tar.gz
cp dalfox /usr/bin/

wget https://github.com/lc/subjs/releases/download/v1.0.1/subjs_1.0.1_linux_amd64.tar.gz
tar zxf subjs_1.0.1_linux_amd64.tar.gz
cp subjs /usr/bin/

wget https://github.com/assetnote/kiterunner/releases/download/v1.0.2/kiterunner_1.0.2_linux_amd64.tar.gz

tar zxf kiterunner_1.0.2_linux_amd64.tar.gz
cp kr /usr/bin/

git clone https://github.com/GerbenJavado/LinkFinder.git
cd LinkFinder
python3 setup.py install
cd ..
git clone https://github.com/sullo/nikto
cd nikto/program
chmod +x *
cp nikto.pl /usr/bin/nikto
cd ../../
wget https://github.com/ffuf/ffuf/releases/download/v2.0.0/ffuf_2.0.0_linux_amd64.tar.gz
tar zxf ffuf_2.0.0_linux_amd64.tar.gz
cp ffuf /usr/bin/

wget https://github.com/tomnomnom/anew/releases/download/v0.1.1/anew-linux-amd64-0.1.1.tgz

tar zxf anew-linux-amd64-0.1.1.tgz
cp anew /usr/bin/

wget https://github.com/projectdiscovery/dnsx/releases/download/v1.1.4/dnsx_1.1.4_linux_amd64.zip

unzip dnsx_1.1.4_linux_amd64.zip 

cp dnsx /usr/bin/
wget https://github.com/projectdiscovery/alterx/releases/download/v0.0.2/alterx_0.0.2_linux_amd64.zip
unzip alterx_0.0.2_linux_amd64.zip
cp alterx /usr/bin/