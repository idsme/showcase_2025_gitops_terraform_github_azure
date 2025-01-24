# TO RUN or Your Azure / Github repo.
* Fork the Github repo.
* Change the subscriptionId in main.tf file
* Local Machine >> CMD >> az login
* Local Machine >>CMD >> terraform apply

## Implemented using ChatGPT took about 1:50min.
### Lessons learned
* ChatGPT cannot give a working terraform file it need 10+ tweaks to get it right using the error's from the command line.
* Give Version numbers of tools your using in the prompt.
* Ask for the minimum configuration get something working first.

## My ChatGPT Prompt.
I want to experiment with the concept of GitOps and Terraform, Azure using a single page website with just a index.html in the most efficient setup possible.  And estimate the time this will cost me to setup.
I have got a Github account and a Azure account but that is all. Give me a step by step guide including the minutes it would take for each step and the total.

Project name should be: showcase_2025_gitops_terraform_github_azure
Region should be: West Europe for azure
My subscription Id:  xxxxxxxx-dc2c-4617-ad1e-xxxxxxxxxxxx

I don't want to setup using the portal if it can be avoided and only use terraform locally.
My terraform version is: v1.10.5 on windows_amd64
The provider registry.terraform.io/hashicorp/azurerm v4.16.

## PS..
Don't commit your terraform.tfstate.* files as they contain sensitive data.

