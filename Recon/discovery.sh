cat data_output | httpx >>live_domains

subzy run --targets   live_domains     --vuln --output subtakeover &

while read line ;do arjun -u $line -oj arjun ; done < live_domains &

katana -list live_domains -f udir >>dir1 
katana -list dir1 -f udir >>dir2
katana -list dir2 -f udir >>dir3
katana -list live_domains -f ufile >>file1&
katana -list dir1 -f ufile >>file2 &
katana -list dir2 -f ufile >>file3 &
katana -list dir3 -f ufile >>file4 &
katana -list live_domains -f qurl >>p1 &
katana -list file2 -f qurl >>p2 &
katana -list file3 -f qurl >>p3 &
cat dir1 |anew dir ;cat dir2 |anew dir ;cat dir3 |anew dir 
cat file1 |anew files ;cat file2 |anew files ;cat file3 |anew files ;cat file4 |anew files 
cat p1 | parameter ;cat p2 | parameter ;cat p3 | parameter ;

cat live_domains | waybackurl | gauplus -b png,gif,css,jpg >> gau

cat files | grep ".js" >>js
cat files | grep ".json" >>js

cat gau | grep ".js" |anew js
cat gau | grep "=" | anew parameter
cat live_domains | subjs | anew js
nuclei -l data_output -t nuclietemp/domains -t nuclietemp/tec -o nuclei_domains &
nuclei -l js -t nuclietemp/js -o nuclei_js &
nuclei -l parameter -t nuclietemp/parameters -o nuclei_parameters &
cat parameter | dalfox >>dalfox &

kr brute  live_domains   -A do ,dot_filenames,apiroutes-230528,directories-230528,raft-large-directories,raft-large-extensions -delay duration 3  -preflight-depth 3-success-status-codes 200,403  -o kitrunner_brute.json &
wait
