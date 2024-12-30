#!/usr/bin/env bash
# Exit on error
set -o errexit

# Modify this line as needed for your package manager (pip, poetry, etc.)

pip install -r requirements.txt
#- Si lo esta ejecutando ->
# git status
# git add .
# git commit -m "commented pip install "
# git push origin master

# Convert static asset files
python manage.py collectstatic --no-input

# Apply any outstanding database migrations
python manage.py migrate

# En gitbash instalar: chmod a+x build.sh
# Tambien: pip install gunicorn
# pip freeze > requirements.txt