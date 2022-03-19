/* 
locals variables used to add Variables in the local.
This local variable cannot paramaterized
Cannot be changed with "-var" while running terraform apply command 

workspace strings has been added we can create different env using workspace
# terraform workspace list // it will list the workspacess
# terraform workspace new <workspace-name / env-name> //it will create new workspace
# terraform workspace select <workspace-name>  // it will select / change the workspace
 */

locals {

  anyware                            = "0.0.0.0/0"
  cidr                               = "172.0.0.0/24"
  security-group-name                = "all-open-public"
  http                               = 80
  ssh                                = 22
}