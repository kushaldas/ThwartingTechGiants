# Thwarting Tech Giants

### Dependencies 
This is for OSX - specifically using their builtin packet filter PF. 

### Installation
1. Clone this repository 
1. `chmod +x build.sh disable.sh enable.sh`
1. create or edit the file: `/etc/pf.conf`, and add this line to the end of it: `block out log from any to <techgiant>`
1. `sudo ./build.sh` <- all scripts must be run as a super user :(. 

### Usage
1. `sudo ./build.sh && ./enable.sh` <- this will build pf rules for all 5 tech giants.  
1. `sudo ./build.sh AWS && sudo ./enable.sh` <- this will build pf rules for AWS.  
1. `sudo ./build.sh Google && sudo ./enable.sh` <- this will build pf rules for Google.  
1. `sudo ./build.sh Facebook && sudo ./enable.sh` <- this will build pf rules for Facebook.  
1. `sudo ./build.sh Microsoft && sudo ./enable.sh` <- this will build pf rules for Microsoft.  
1. `sudo ./build.sh Apple && sudo ./enable.sh` <- this will build pf rules for Apple.  

NOTES

- This is a quick and dirty version of what we had running no the server, so there are probably some bugs. 
- You will need to add the above line to /etc/pf.conf everytime you restart your computer. 
- This does not block services behind a CDN
- For WhatsApp and Github you will need to add additional rules