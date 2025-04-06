#!/bin/bash

# SPDX-License-Identifier: The Unlicense
# (See: https://github.com/hiromi-mi/hiromi-mi.github.io/blob/master/prog/ffmpeg_bf/LICENSE)
# How to use: 
# 1. recompile ffmpeg with the modification of VARS from 10 to 512(or more) at https://github.com/FFmpeg/FFmpeg/blob/3f30ae823e27e7a60c693b52ad44b10ac2ad2823/libavutil/eval.c#L56
# 2. create source_and_input as follows :
#   First line: Brainfuck source code
#   Second & following lines: standard input
# 3. FFMPEG="/path/to/rebuilded/ffmpeg" bf_run.sh source_and_input.txt
# 4. Standard output will be written in out.txt

SOURCE_AND_INPUT="$1"

${FFMPEG} -v debug -y -f rawvideo -pixel_format gray -video_size $(wc -c < ${SOURCE_AND_INPUT})x1  -i ${SOURCE_AND_INPUT} -filter_threads 1 -/filter_complex bf_interpreter_internal.txt -f rawvideo out.txt
