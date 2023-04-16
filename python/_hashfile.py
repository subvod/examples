# _hashfile.py
# generates hashes for file passed as argument
# https://stackoverflow.com/a/22058673
# https://stackoverflow.com/a/58141165
# https://stackoverflow.com/a/39988702

# example:
#     _hashfile.py rom.gbc

import os
import sys
import hashlib
import zlib

# buffer size per data block
# totally arbitrary, change for your app
BUF_SIZE = 65536  # lets read stuff in 64kb chunks

# init individual hash vars
crc = 0
md5 = hashlib.md5()
sha1 = hashlib.sha1()
sha256 = hashlib.sha256()
sha512 = hashlib.sha512()
# sha3 versions
sha3_256 = hashlib.sha3_256()
sha3_512 = hashlib.sha3_512()

# function to convert byte count
def convert_bytes(num):
    for x in ['bytes', 'KB', 'MB', 'GB', 'TB']:
        if num < 1024.0:
            return "%3.1f %s" % (num, x)
            # return f'{num:.1f} {x}'
        num /= 1024.0

# function to return file size
def file_size(path):
    if os.path.isfile(path):
        file_info = os.stat(path)
        return file_info.st_size

# init file size
FILE_PATH = sys.argv[1]
FILE_SIZE = file_size(FILE_PATH)

# read through file in BUF_SIZE chunks
with open(FILE_PATH, 'rb') as f:
    while True:
        data = f.read(BUF_SIZE)
        if not data:
            break
        # update individual hash vars
        crc = zlib.crc32(data, crc)
        md5.update(data)
        sha1.update(data)
        sha256.update(data)
        sha512.update(data)
        # sha3 versions
        sha3_256.update(data)
        sha3_512.update(data)
    # crc32 cleanup
    crc = "%08X" % (crc & 0xFFFFFFFF)

# print hashes to console
print("FILE: {0}".format(FILE_PATH))
print("SIZE: {0}".format(FILE_SIZE))
print("CRC32: {0}".format(crc))
print("SHA1: {0}".format(sha1.hexdigest()))
print("MD5: {0}".format(md5.hexdigest()))
print("SHA256: {0}".format(sha256.hexdigest()))
print("SHA512: {0}".format(sha512.hexdigest()))
# add sha3 versions
print("SHA3-256: {0}".format(sha3_256.hexdigest()))
print("SHA3-512: {0}".format(sha3_512.hexdigest()))

FINAL_SIZE = str(FILE_SIZE) + " (" + str(convert_bytes(FILE_SIZE)) + ")"

# print hashes to "output.txt"
with open ('output.txt', 'a') as out_file:
    print("\nFILE: {0}".format(FILE_PATH), file=out_file)
    print("SIZE: {0}".format(FINAL_SIZE), file=out_file)
    print("CRC32: {0}".format(crc), file=out_file)
    print("MD5: {0}".format(md5.hexdigest()), file=out_file)
    print("SHA1: {0}".format(sha1.hexdigest()), file=out_file)
    print("SHA256: {0}".format(sha256.hexdigest()), file=out_file)
    print("SHA512: {0}".format(sha512.hexdigest()), file=out_file)
    # add sha3 versions
    print("SHA3-256: {0}".format(sha3_256.hexdigest()), file=out_file)
    print("SHA3-512: {0}".format(sha3_512.hexdigest()), file=out_file)
