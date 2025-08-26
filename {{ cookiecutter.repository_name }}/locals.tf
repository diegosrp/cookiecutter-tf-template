#-------------------------------------------------------------------------------------------------------------------------------
# A local value assigns a name to an expression, 
# so you can use the name multiple times within a module instead of repeating the expression.
#-------------------------------------------------------------------------------------------------------------------------------

locals {
  project_name = "{{ cookiecutter.project_name.lower().replace(' ', '-') }}-{{ cookiecutter.environment }}"
}