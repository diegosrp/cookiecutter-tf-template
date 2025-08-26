# Cookiecutter

## Usage

Suppose you want to create a project called "my project" to provision infrastructure on Azure using Terraform. Instead of starting from scratch, copying files, and adjusting settings like subscription_id, location, and other important variables, use Cookiecutter to automate the entire process.

### 1. Install Cookiecutter

```sh
pip install cookiecutter
```

Or, if you prefer, install with Homebrew:

```sh
brew install cookiecutter
```

### 2. Generate a new project based on this template

```sh
cookiecutter https://github.com/diegosrp/cookiecutter-tf-template.git
```

You will be prompted for information such as:

- `project_name`
- `minimum_terraform_version`
- `maximum_terraform_version`
- `provider_minimum_version`
- `environment`
- `subscription_id`
- `location`

These values will customize your new project.

<br>

> <br>
>
> **Note:**
>
 > - `project_name;` is required and cannot be empty. It may include only letters, numbers, spaces, hyphens (-), and underscores (_). <br> In the final name, all spaces and underscores are replaced by hyphens, everything is converted to lowercase.<br><br>
> - `subscription_id;` is optional. If provided, it must be a valid Azure Subscription GUID (format: xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx).
> <br>

### 3. Example answers for the variables

```json
"project_name": my project
"minimum_terraform_version": 1.10.0
"maximum_terraform_version": 2.0
"provider_minimum_version": 4.40
"environment": 1
"subscription_id": 0000-0000-0000-0000-000000000000
"location": australiaeast
```

### 4. Enter the project directory and check the files

```sh
cd {{ cookiecutter.repository_name }}/
ls
```

You will see files like:

```text
.gitignore  backend.tf  data.tf  locals.tf  main.tf  outputs.tf  providers.tf  README.md. terraform.tf  terraform.tfvars  variables.tf
```


This template was created to help you quickly start new Azure Terraform projects with standardized file structure, naming conventions. By using this template, you ensure:

- Consistent naming for files
- Predefined file organization for Terraform code
- Version and provider constraints already set
- A clear starting point for your team or organization

The template is designed to save you time and reduce errors by providing a solid, opinionated foundation for your infrastructure-as-code projects.

Happy automating!
