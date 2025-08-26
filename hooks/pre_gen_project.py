import sys
import re

raw_project_name = "{{ cookiecutter.project_name }}"
project_name = raw_project_name.strip().lower().replace(" ", "-").replace("_", "-")
subscription_id = "{{ cookiecutter.subscription_id }}".strip()
minimum_terraform_version = "{{ cookiecutter.minimum_terraform_version }}".strip()
maximum_terraform_version = "{{ cookiecutter.maximum_terraform_version }}".strip()
provider_minimum_version = "{{ cookiecutter.provider_minimum_version }}".strip()


# Validate project_name: only letters, numbers, spaces, hyphens (-) allowed
project_name_regex = r"^[a-zA-Z0-9\- ]+$"
if not raw_project_name.strip():
    print("ERROR: The 'project_name' cannot be empty.", file=sys.stderr)
    sys.exit(1)
if not re.match(project_name_regex, raw_project_name):
    print("ERROR: 'project_name' must contain only letters, numbers, spaces, or hyphens (-).", file=sys.stderr)
    sys.exit(1)


# Validate version fields (must be X.Y or X.Y.Z, only digits and dots)
version_regex = r"^\d+\.\d+(\.\d+)?$"
if not re.match(version_regex, minimum_terraform_version):
    print("ERROR: 'minimum_terraform_version' must be in the format X.Y or X.Y.Z (e.g. 1.10.0)", file=sys.stderr)
    sys.exit(1)

if not re.match(version_regex, maximum_terraform_version):
    print("ERROR: 'maximum_terraform_version' must be in the format X.Y or X.Y.Z (e.g. 2.0)", file=sys.stderr)
    sys.exit(1)

if not re.match(version_regex, provider_minimum_version):
    print("ERROR: 'provider_minimum_version' must be in the format X.Y or X.Y.Z (e.g. 4.40)", file=sys.stderr)
    sys.exit(1)


# Validate subscription_id: if provided, must match Azure GUID format (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
guid_regex = r"[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"
if subscription_id:
    if not re.match(guid_regex, subscription_id):
        print("ERROR: The 'subscription_id' must be a valid Azure Subscription GUID (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx).", file=sys.stderr)
        sys.exit(1)