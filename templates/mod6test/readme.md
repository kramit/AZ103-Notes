# Test instructions

## Run in powerhsell cloud shell

cd $home

git clone https://github.com/kramit/AZ103-Notes.git

cd ./AZ103-Notes/templates/mod6test

./deploy.ps1

# Or run this one liner

IEX (iwr 'https://raw.githubusercontent.com/kramit/AZ103-Notes/master/templates/mod6test/getdeployment.ps1')
