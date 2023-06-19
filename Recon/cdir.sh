
while read asn ; do asnmap -a $asn -o asnmap ; done <$1

while read asn; do whois -h whois.radb.net -- '-i origin $asn ' | grep -Eo "([0-9.]+){4}/[0-9]+" >>whois ; done <$1

cat asnmap | anew cdir ;cat whois | anew cdir

mapcidr -cidr  cdir  -silent  -o cdir_ips |

 cat cdir_ips | dnsx -ptr -resp-only -o ptr

dirsearch -l cdir_ips -t 50 --deep-recursive    -R 2 --deep-recursive=200,403 -i 200 --random-agent -f --crawl -o dir_ips --format=json &

dirsearch -l cdir_ips -t 50 --deep-recursive    -R 2 --deep-recursive=200,403 -i 200 --random-agent -f --crawl -o dir_ips_Post --format=json -m POST
