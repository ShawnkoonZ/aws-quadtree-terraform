# aws-quadtree-terraform
Terraform to setup QuadTree environment on AWS to apply DevOps practice.

## Reading Materials.
- https://www.terraform.io/
- https://blog.gruntwork.io/an-introduction-to-terraform-f17df9c6d180
- https://www.terraform.io/intro/index.html
- http://www.darwinrecruitment.com/news/what-is-terraform-and-how-is-it-changing-devops-technologies-68233/
- https://www.terraform.io/docs/providers/aws/index.html
- http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ProvisionedThroughput.html


## Run

1. Export AWS_ACCESS_KEY_ID , AWS_SECRET_ACCESS_KEY to Environment Variable.
  http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html#cli-environment

2. Browse Into env/prod folder.

3. Run following commands.

<br>

```$ terraform get```
> Usage: terraform get [options] PATH<br>

**Downloads and installs modules needed for the configuration given by
PATH.**

This recursively downloads all modules needed, such as modules
imported by modules imported by the root and so on. If a module is
already downloaded, it will not be redownloaded or checked for updates
unless the -update flag is specified.
  
  ----------
  ```$ terraform init```
  > Usage: terraform init [options] [SOURCE] [PATH]

  Initialize a new or existing Terraform environment by creating
  initial files, loading any remote state, downloading modules, etc.

  This is the first command that should be run for any new or existing
  Terraform configuration per machine. This sets up all the local data
  necessary to run Terraform that is typically not comitted to version
  control.

  This command is always safe to run multiple times. Though subsequent runs
  may give errors, this command will never blow away your environment or state.
  Even so, if you have important information, please back it up prior to
  running this command just in case.

  If no arguments are given, the configuration in this working directory
  is initialized.

  If one or two arguments are given, the first is a SOURCE of a module to
  download to the second argument PATH. After downloading the module to PATH,
  the configuration will be initialized as if this command were called pointing
  only to that PATH. PATH must be empty of any Terraform files. Any
  conflicting non-Terraform files will be overwritten. The module download
  is a copy. If you're downloading a module from Git, it will not preserve
  Git history.

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

  ---------
  ```$ terraform apply```
  > Usage: terraform apply [options] [DIR-OR-PLAN]

  Builds or changes infrastructure according to Terraform configuration
  files in DIR.

  By default, apply scans the current directory for the configuration
  and applies the changes appropriately. However, a path to another
  configuration or an execution plan can be provided. Execution plans can be
  used to only execute a pre-determined set of actions.

  DIR can also be a SOURCE as given to the "init" command. In this case,
  apply behaves as though "init" was called followed by "apply". This only
  works for sources that aren't files, and only if the current working
  directory is empty of Terraform files. This is a shortcut for getting
  started.

  ---------
  ```$ terraform show```
  > Usage: terraform show [options] [path]

  Reads and outputs a Terraform state or plan file in a human-readable
  form. If no path is specified, the current state will be shown.

  ---------
  ``` $ terraform destroy```
  > Usage: terraform destroy [options] [DIR]

  Destroy Terraform-managed infrastructure.

  ## MISC

  1. IAM roles must be initialized with arn (I couldn't figure creating new one by code).

  2. Lambda function needs to be uploaded into `shawnkoonz-quadtree-files/lambda` with *ZIP* ext.

  3. Need to manually setup triggering event on lambda functions (Terrraform seems to not support this feature?).
