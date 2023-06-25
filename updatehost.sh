curl --fail -L -o/usr/local/etc/DMR_Hosts.txt -s https://hostfiles.w0chp.net/DMR_Hosts.txt

curl --fail -L -o /tmp/DMR_HostsKRAP.txt -s https://raw.githubusercontent.com/zaldyrs/DMRsaya/main/DMR_Hosts.txt
cat /tmp/DMR_HostsKRAP.txt >> /usr/local/etc/DMR_Hosts.txt
