#!/usr/bin/env bash
source $(dirname $(realpath $_))/_utils.sh

if [ -z "$1" ]; then
    _scripts_usage_name remux.sh Output MP4 file from assumed-compatible input.

    _scripts_usage_synopsis_start remux.sh
    _scripts_usage_synopsis_param_optional options
    _scripts_usage_synopsis_param filename
    _scripts_usage_synopsis_end

    _scripts_usage_description Copy streams from the given FILENAME to a standard MP4 container.

    exit 1
fi

extension=${1#*.}

if [[ "$extension" == "mp4" || "$extension" == "m4v" ]]; then
    echo "Your input file already appears to be a standard MP4 container."
    exit 2
fi

basename=$(basename "$1" ".$extension")

ffmpeg -i "$1" -c:v copy -c:a copy "$basename.mp4"
