subfinder -subs-only -dL $1 >>all_subs.txt &

while read line ;do amass enum -passive -active -d $line >>all_subs.txt ;done <$1 &

while read line ; do puredns bruteforce wordlists/all.txt $line -r /tools/massdns/lists/resolvers.txt -w $line".txt" ; done <$1 &

cat $1 | knock -o knock &

altdns -i all_subs.txt  -w wordlists/all.txt -r -s -o data_output &

##port scan

naabu -l all_subs.txt &

cat data_output | httpx -random-agent -retries 2 -threads 150 -no-color -s -title -ports 80,443,81,300,591,593,832,981,1010,1311,1099,2082,2095,2096,2480,3000,3128,3333,4243,4567,4711,4712,4993,5000,5104,5108,5280,5281,5601,5800,6543,7000,7001,7396,7474,8000,8001,8008,8014,8042,8060,8069,8080,8081,8083,8088,8090,8091,8095,8118,8123,8172,8181,8222,8243,8280,8281,8333,8337,8443,8500,8834,8880,8888,8983,9000,9001,9043,9060,9080,9090,9091,9200,9443,9502,9800,9981,10000,10250,11371,12443,15672,16080,17778,18091,18092,20720,32000,55440,55672 -o commonports.txt &
wait
