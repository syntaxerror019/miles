#!/bin/bash

# Get current date and determine the Monday of the current week
current_date=$(date +%Y-%m-%d)
day_of_week=$(date +%u) # 1 (Monday) to 7 (Sunday)
days_since_monday=$((day_of_week - 1))
monday_date=$(date -d "$current_date -$days_since_monday days" +%Y-%m-%d)

# Set the folder path and create it (formatted as MM-DD-YY)
folder_date=$(date -d "$monday_date" +%m-%d-%y)
folder_path="./content/posts/$folder_date"
mkdir -p "$folder_path"

# Prepare the title and current date for the index.md file
title_date=$(date -d "$monday_date" +%m/%d/%y) # Week of Monday
current_date_time=$(date +%Y-%m-%dT%H:%M:%S%z) # ISO 8601 format

# Create the index.md file with the required contents
cat <<EOL > "$folder_path/index.md"
---
title: 'Robotics & Engineering - Week of $title_date'
date: $current_date_time
tags: ['robotics-blog']
image: ''
draft: false
---

---
EOL

# Output the result
echo "Folder and file created at: $folder_path"
echo "Contents of index.md:"
cat "$folder_path/index.md"
