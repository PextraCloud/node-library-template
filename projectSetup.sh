#!/bin/bash
set -e
cd "$(dirname "$0")"

readonly PROJECT_NAME="node-library-template"

replace() {
  sed -i "s/$1/$2/g" $3
}

read -p "Enter the project name: " project_name

replace "$PROJECT_NAME" "$project_name" package.json
replace "$PROJECT_NAME" "$project_name" package-lock.json

echo "Replaced '$PROJECT_NAME' with '$project_name' in package.json and package-lock.json."
