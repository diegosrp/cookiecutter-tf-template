import sys
import re

project_name = "{{ cookiecutter.project_name }}".strip().lower().replace(" ", "-").replace("_", "-")
subscription_id = "{{ cookiecutter.subscription_id }}".strip()

if not project_name:
    print("ERROR: The 'project_name' cannot be empty.", file=sys.stderr)
    sys.exit(1)

guid_regex = r"[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"
if subscription_id:
    if not re.match(guid_regex, subscription_id):
        print("ERROR: The 'subscription_id' must be a valid Azure Subscription GUID (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx).", file=sys.stderr)
        sys.exit(1)