#!/usr/bin/env bash
source $(dirname $(realpath $_))/_utils.sh

if [ -z "$1" ]; then
    _scripts_usage_name speedup.sh Change playback speed of video.

    _scripts_usage_synopsis_start speedup.sh
    _scripts_usage_synopsis_param filename
    _scripts_usage_synopsis_param_optional speed
    _scripts_usage_synopsis_param_optional fps
    _scripts_usage_synopsis_end

    _scripts_usage_description Change the playback speed of a given video file and remove audio.

    _scripts_usage_options_start
    _scripts_usage_options_name speed
    _scripts_usage_options_description Resulting speed of the output video. $(_scripts_bold 1.5) is the default.
    echo
    _scripts_usage_options_name fps
    _scripts_usage_options_description Final FPS of the output file. $(_scripts_bold 30) is the default.

    exit 1
fi

basename=${1%.*}
speed="${2:-1.5}"
fps="${3:-30}"
output="$basename@${speed}x.mp4"

ffmpeg -i "$1" -filter:v "setpts=PTS/$speed,fps=$fps" -an "$output"
