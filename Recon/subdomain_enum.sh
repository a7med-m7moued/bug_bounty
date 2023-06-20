subfinder -subs-only -dL $1 >>all_subs.txt 

while read line ;do amass enum -passive -active -d $line >>all_subs.txt ;done <$1 

while read line ; do puredns bruteforce wordlists/all.txt $line -r /tools/massdns/lists/resolvers.txt -w "$line" ; done <$1 

 cd ../../tools/massdns
while read line ; do ./scripts/subbrute.py lists/names.txt $line | ./bin/massdns -r lists/resolvers.txt -t A -o S -w ../../bug_bounty/Recon/$line ;done>../../bug_bounty/Recon/domain



