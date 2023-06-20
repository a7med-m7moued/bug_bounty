
cat all_subs | httpx -random-agent -retries 2 -threads 150 -no-color -s -title -ports 80,443,81,300,591,593,832,981,1010,1311,1099,2082,2095,2096,2480,3000,3128,3333,4243,4567,4711,4712,4993,5000,5104,5108,5280,5281,5601,5800,6543,7000,7001,7396,7474,8000,8001,8008,8014,8042,8060,8069,8080,8081,8083,8088,8090,8091,8095,8118,8123,8172,8181,8222,8243,8280,8281,8333,8337,8443,8500,8834,8880,8888,8983,9000,9001,9043,9060,9080,9090,9091,9200,9443,9502,9800,9981,10000,10250,11371,12443,15672,16080,17778,18091,18092,20720,32000,55440,55672 -o commonports.txt

##port scan

naabu -l all_subs >>ips


cat all_subs | httpx >>live_domains

subzy run --targets   all_Subs     --vuln --output subtakeover
dirsearch -l live_domains -t 50 --deep-recursive    -R 2 --deep-recursive=200,403 -i 200 --random-agent -f --crawl -o dir_urls --format=json 

dirsearch -l live_domais -t 50 --deep-recursive    -R 2 --deep-recursive=200,403 -i 200 --random-agent -f --crawl -o dir_urls_Post --format=json -m POST 

while read line ;do arjun -u $line -oj arjun ; done < live_domains 

katana -list live_domains -f udir >>dir1 
katana -list dir1 -f udir >>dir2
katana -list dir2 -f udir >>dir3
katana -list live_domains -f ufile >>file1
katana -list dir1 -f ufile >>file2 
katana -list dir2 -f ufile >>file3 
katana -list dir3 -f ufile >>file4 
katana -list live_domains -f qurl >>p1 
katana -list file2 -f qurl >>p2 
katana -list file3 -f qurl >>p3 
cat dir1 |anew dir ;cat dir2 |anew dir ;cat dir3 |anew dir 
cat file1 |anew files ;cat file2 |anew files ;cat file3 |anew files ;cat file4 |anew files 
cat p1 | parameter ;cat p2 | parameter ;cat p3 | parameter ;

cat live_domains | waybackurl | gauplus -b png,gif,css,jpg >> gau 

cat files | grep ".js" >>js
cat files | grep ".json" >>js

cat gau | grep ".js" |anew js
cat gau | grep "=" | anew parameter
cat live_domains | subjs | anew js
python3 ../../tools/linkfinder/linkfinder.py -i js -o linkfinder
nuclei -l data_output -t nuclietemp/domains -t nuclietemp/tec -o nuclei_domains 
nuclei -l js -t nuclietemp/js -o nuclei_js 
nuclei -l parameter -t nuclietemp/parameters -o nuclei_parameters 
cat parameter | dalfox >>dalfox 

kr brute  live_domains   -A do ,dot_filenames,apiroutes-230528,directories-230528,raft-large-directories,raft-large-extensions -delay duration 3  -preflight-depth 3-success-status-codes 200,403  -o kitrunner_brute.json 

