#!/usr/bin/env zsh
set -euo pipefail
export COLOR_GREEN='\e[0;32m'
export COLOR_NC='\e[0m'

echo "${COLOR_GREEN}Run Black. ${COLOR_NC}"
poetry run black .

echo "${COLOR_GREEN}Run isort.${COLOR_NC}"
poetry run isort .

echo "${COLOR_GREEN}Run mypy.${COLOR_NC}"
poetry run mypy . --namespace-packages

echo "${COLOR_GREEN}Run tests.${COLOR_NC}"
python manage.py test

echo "${COLOR_GREEN} Test Success. ${COLOR_NC}"
