curl --fail -L -o /tmp/MD5Contactlist.csv -s https://raw.githubusercontent.com/zaldyrs/DMRsaya/main/MD5contactlist
                                                                                                                                                     
curl --fail -L -o /tmp/user.csv.bz2 -s https://hostfiles.w0chp.net/user.csv.bz2
bunzip2 -f /tmp/user.csv.bz2
cat /tmp/user.csv | sort -un -k1n -o /usr/local/etc/user.csv
sed -ie '1d' /usr/local/etc/user.csv
                                                                                                                                                     
cat /tmp/MD5Contactlist.csv >> /usr/local/etc/user.csv
                                                                                                                                                     
rm -rf /usr/local/etc/stripped.csv
ln -s /usr/local/etc/user.csv /usr/local/etc/stripped.csv                                                                                            
                                                                                                                                                     
curl --fail -L -o /usr/local/etc/country.csv -s https://hostfiles.w0chp.net/country.csv
curl --fail -L -o /tmp/DMRIds.tmp.bz2 -s https://hostfiles.w0chp.net/DMRIds.dat.bz2 
bunzip2 -f /tmp/DMRIds.tmp.bz2
cat /tmp/DMRIds.tmp  2>/dev/null | grep -v '^#' | awk '($1 > 999999) && ($1 < 10000000) { print $0 }' | sort -un -k1n -o /usr/local/etc/DMRIds.dat
rm -f /tmp/DMRIds.tmp
                                                                                                                                                     
curl --fail -L -o /tmp/DMRIdsKRAP.dat -s https://raw.githubusercontent.com/zaldyrs/DMRsaya/main/DMRIds.dat
cat /tmp/DMRIdsKRAP.dat >> /usr/local/etc/DMRIds.dat
                                                                                                                                                     
sed -i 's/Indonesia;ID;YB-YC-YD-YE-YF-YG-YH/Indonesia;ID;YB-YC-YD-YE-YF-YG-YH-JZ/g' /usr/local/etc/country.csv


