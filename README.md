# General Scripts

These are some scripts that I use occasionally which needed a home.

## Usage

Clone this repo, and add it to your `PATH`. Note that some of the scripts require Nodejs, hence the mise.toml present at the root. You'll want to have [mise](https://mise.jdx.dev/) installed.

### gify

This script requires [ffmpeg](https://www.ffmpeg.org/) be installed and available in your `PATH`.

Converts a video file to GIF using a Lanczos scaling algorithm, and [palettegen](https://ffmpeg.org/ffmpeg-filters.html#palettegen) and [paletteuse](https://ffmpeg.org/ffmpeg-filters.html#paletteuse) filters.

### half

This script requires [ImageMagick](https://imagemagick.org/) be installed and available in your `PATH`.

Call this script with the filename of an image to resize that image to 50%, saving as `${name}-resized.${ext}` in the current directory.

### remux.sh

Copy the video and audio streams from an existing file into a standard MP4 container, assuming that the input file's streams are compatible.

### speedup.sh

Change the playback speed of a given video file and remove audio.

### xc

Opens any Xcode workspace or project present in the current working directory. Lazier than typing `open Projectname.xcworkspace` manually.
