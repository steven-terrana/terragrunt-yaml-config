# Overview

This repository shows how to read configuration inputs from a YAML file and include them as an input if and only if they're provided.

This is valuable, because otherwise, null values will be passed as inputs - preventing you from using the default values defined in terraform.

# Prerequisites

* terragrunt 
* terraform

# Repository Structure

```
# user provided configuration yaml
./configuration.yaml
# actual terraform modules to be run
modules/  
# terragrunt code
./terragrunt
```
# Run the example

The magic happens in `terragrunt/module_A/terragrunt.hcl`

```
cd terragrunt/module-A
terragrunt run-all apply
```