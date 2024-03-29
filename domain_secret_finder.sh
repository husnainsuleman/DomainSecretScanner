#!/bin/bash

ascii_art="
  _____                        _        _____                    _    _____                                 
 |  __ \\                      (_)      / ____|                  | |  / ____|                                
 | |  | | ___  _ __ ___   __ _ _ _ __ | (___   ___  ___ _ __ ___| |_| (___   ___ __ _ _ __  _ __   ___ _ __ 
 | |  | |/ _ \\| '_ \` _ \\ / _\` | | '_ \\ \\___ \\ / _ \\/ __| '__/ _ \\ __|\\___ \\ / __/ _\` | '_ \\| '_ \\ / _ \\ '__|
 | |__| | (_) | | | | | | (_| | | | | |____) |  __/ (__| | |  __/ |_ ____) | (_| (_| | | | | | | |  __/ |   
 |_____/ \\___/|_| |_| |_|\\__,_|_|_| |_|_____/ \\___|\\___|_|  \\___|\\__|_____/ \\___\\__,_|_| |_|_| |_|\\___|_|   

				https://github.com/husnainsuleman/DomainSecretScanner
                                		Author:@husnain_suleman                                                "

echo "$ascii_art"

read -p "Enter domain name: " domain
subfinder -d $domain --silent > 1_alldomain.txt 
echo "Subdomains found and saved in alldomain.txt"

# Phase 2: Collecting JS files from All Discovred subdomains
echo "Collecting JS files from All Discovred subdomains......."
katana -list 1_alldomain.txt -jc -d 3 | grep ".js$" | uniq | sort > 2_all_domain_js.txt
echo "JS files collected and saved in all_domain_js.txt"

# Phase 3: Extracting secrets from JS files using SecretFinder
echo "Extracting secrets from JS files............."
mkdir -p secret
cat 2_all_domain_js.txt | while read url; do
    python3 SecretFinder/SecretFinder.py -i $url -o cli >> secret/all_secret.txt
done
echo "Secrets extracted and saved in secret dir"

echo "All completed successfully Enjoy"

