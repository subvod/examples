import os
cwd = os.getcwd()
istream = cwd + "\\istream\\"
ostream = cwd + "\\ostream\\"
iext = ".webm"
oext = ".opus"
tmpfn = "null"

for file in os.listdir(istream):
  if (file.endswith(iext)):
    tmpfn = file
  if tmpfn.find("Topic - ") != -1:
    tmpfn = tmpfn.replace("Topic - ", "")
  tokens = tmpfn.split(" - ")
  command = cwd + "\\ffmpeg.exe -i \"" + istream + file + "\" -vn -acodec copy -metadata artist=\"" + tokens[0] + "\" -metadata title=\"" + tokens[1].replace(iext, "") + "\" \"" + ostream + tmpfn.replace(iext, oext) + "\""
  os.system(command)