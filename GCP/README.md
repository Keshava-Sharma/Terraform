# Terraform_GCP

terraform plan
terraform apply -auto-approve
terraform apply -replace azurerm_public_ip.SIpubIp 
terraform destroy -target azurerm_resource_group.rg1
terraform destroy 
terraform init -upgrade
terraform taint azurerm_public_ip.SIpubIp 

terraform graph > vm
terraform plan -out k7n_win
terraform graph -plan k7n_win > k7n_win_graph 
terraform graph > linx   

terraform workspace list 
terraform workspace show
terraform workspace new dev
terraform workspace select dev
terraform workspace delete dev


>=1.0 -- Greater than equal tothe version
<=1.0 -- Less than or equal to the version
~>2.0 -- Any verison in 2.0 range
>=2.10,<=2.30 -- Any version b/w 2.10 & 2.30

setx TF_LOG TRACE == seting the value for logs, to get active need to restart vs code
setx TF_LOG WARN  == setiing warning
setx TF_LOG_PATH C:\<filename.log>  == stores the logs in the files

unset can be used to remove the variabe set in env


git config --global user.name "k7n-oct"
git config --global user.email "keshava.sharma487@gmail.com"
git config --list
git init
git status
git add .


