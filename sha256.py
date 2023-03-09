# sha256.py
# generates sha256 and md5 hashes for file passed as argument
# https://stackoverflow.com/a/22058673

import sys
import hashlib

# BUF_SIZE is totally arbitrary, change for your app
BUF_SIZE = 65536  # lets read stuff in 64kb chunks

md5 = hashlib.md5()
sha256 = hashlib.sha256()

with open(sys.argv[1], 'rb') as f:
    while True:
        data = f.read(BUF_SIZE)
        if not data:
            break
        md5.update(data)
        sha256.update(data)

# print hashes to console
print("MD5: {0}".format(md5.hexdigest()))
print("SHA256: {0}".format(sha256.hexdigest()))

# print hashes to "output.txt"
with open ('output.txt', 'w') as out_file:
    print("MD5: {0}".format(md5.hexdigest()), file=out_file)
    print("SHA256: {0}".format(sha256.hexdigest()), file=out_file)