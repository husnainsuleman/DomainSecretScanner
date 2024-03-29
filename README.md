# DomainSecretScanner
DomainSecretScanner automates secret extraction from JavaScript files, aiding bug bounty hunters, penetration testers, Security Researchers also developers.
It simplifies collecting sensitive data like API keys and passwords, usernames, AWS Access keys, and others.


## Features

- Automated subdomain discovery.
- Collection of JavaScript files from discovered subdomains.
- Extraction of secrets from JavaScript files.
- Consolidation of extracted secrets into a single output file.

## Setup

Follow these steps for Installation:

```bash
https://github.com/husnainsuleman/DomainSecretScanner.git
chmod +x install.sh domain_secret_scanner.sh
./install.sh
```

## Usage
 ```bash
./domain_secret_scanner.sh
```
![image](https://github.com/husnainsuleman/DomainSecretScanner/assets/51457254/ac4de09e-8212-46cb-a9d7-1814946cf9f2)

You can see in this ScreenShot all secrets extracted from the JavaScript file:

![image](https://github.com/husnainsuleman/DomainSecretScanner/assets/51457254/98843b51-409a-41f6-8a45-d54f5b06a67d)

## Disclaimer

This tool is intended for educational and ethical testing purposes only. Users are responsible for complying with all applicable laws and regulations.



