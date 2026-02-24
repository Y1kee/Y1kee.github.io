#!/bin/bash
# Docker entry script: skips Gemfile.lock restore so bundle install can add
# aarch64 (Apple Silicon) gems; then runs Jekyll with watch + livereload.
set -euo pipefail

echo "Docker entry point (with bundle install) running"
cd /srv/jekyll

CONFIG_FILE=_config.yml

# Install gems for current platform (no git restore of Gemfile.lock)
bundle install

start_jekyll() {
    bundle exec jekyll serve --watch --port=8080 --host=0.0.0.0 --livereload --verbose --trace --force_polling --disable-disk-cache &
}

start_jekyll

while true; do
    inotifywait -q -e modify,move,create,delete $CONFIG_FILE
    if [ $? -eq 0 ]; then
        echo "Change detected to $CONFIG_FILE, restarting Jekyll"
        jekyll_pid=$(pgrep -f jekyll)
        kill -KILL $jekyll_pid 2>/dev/null || true
        start_jekyll
    fi
done
