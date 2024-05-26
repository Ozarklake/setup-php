#!/bin/bash
set -e

# Execute the script passed as an argument
echo "Running the script inside the PHP 7.3 container:"

exec "$@"

