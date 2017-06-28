#!/bin/sh
if [ -f /app/requirements.yml ]; then
  ansible-galaxy install --force -r /app/requirements.yml
fi

exec "$@"
