# aws-quadtree-terraform
Terraform to setup QuadTree environment on AWS to apply DevOps practice.

## Reading Materials.
- https://www.terraform.io/
- https://blog.gruntwork.io/an-introduction-to-terraform-f17df9c6d180
- https://www.terraform.io/intro/index.html
- http://www.darwinrecruitment.com/news/what-is-terraform-and-how-is-it-changing-devops-technologies-68233/


## Run

```$ terraform get```
> Usage: terraform get [options] PATH<br>

**Downloads and installs modules needed for the configuration given by
PATH.**

This recursively downloads all modules needed, such as modules
imported by modules imported by the root and so on. If a module is
already downloaded, it will not be redownloaded or checked for updates
unless the -update flag is specified.

----------
```$ terraform plan```
> Usage: terraform plan [options] [DIR-OR-PLAN]

  **Generates an execution plan for Terraform.**

  This execution plan can be reviewed prior to running apply to get a
  sense for what Terraform will do. Optionally, the plan can be saved to
  a Terraform plan file, and apply can take this plan file to execute
  this plan exactly.

  If a saved plan is passed as an argument, this command will output
  the saved plan contents. It will not modify the given plan.