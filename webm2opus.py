# webm2opus.py
# for use with Windows 10; tested with Python v3.9.4
# downloads audio in format id# 251 a.k.a. audio-only OPUS 160k in WEBM container
# extracts OPUS audio from WEBM container without transcoding (lossless)
# automatically sets artist/title metadata according to filename format: "Artist - Title.webm"
# refer to youtube-dl (for downloading) and ffmpeg (for conversion) documentations for alternative formats

import os

# current directory
cwd = os.getcwd()
# input path
istream = cwd + "\\istream\\"
# output path
ostream = cwd + "\\ostream\\"
# input extension
iext = ".webm"
# output extension
oext = ".opus"
# temporary file name
tmpfn = "null"
# file containing list of video/audio hyperlinks
links = "_videolist.txt"

# output filename in format "Uploader - Title.webm"
# assume possible HLS stream as native
# download format id #251; OPUS 160k audio-only in WebM container (refer to youtube-dl documentation)
# download all from "_videolist.txt"
command = cwd + "\\youtube-dl.exe --newline -o \"%(uploader)s - %(title)s.%(ext)s\" --hls-prefer-native -f 251 --batch-file=\"" + links + "\""
os.system(command)

# move all downloaded files to stdin path
command = "move \"" + cwd + "\\*" + iext + "\" \"" + istream + "\""
os.system(command)

# loop through all files in stdin path
# removes "Topic - " string if present
# tokenizes (splits) filename into strings; delimited/split by " - "
# auto set artist/title metadata to tokens, respectively
# use input/output extensions specified
for file in os.listdir(istream):
  if (file.endswith(iext)):
    tmpfn = file
  if tmpfn.find("Topic - ") != -1:
    tmpfn = tmpfn.replace("Topic - ", "")
  tokens = tmpfn.split(" - ")
  command = cwd + "\\ffmpeg.exe -i \"" + istream + file + "\" -vn -acodec copy -metadata artist=\"" + tokens[0] + "\" -metadata title=\"" + tokens[1].replace(iext, "") + "\" \"" + ostream + tmpfn.replace(iext, oext) + "\""
  os.system(command)
