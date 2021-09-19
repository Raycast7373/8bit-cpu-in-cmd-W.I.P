import os
import fileinput
import sys
from shutil import copyfile
import pathlib

InputFile = input("enter input file name:")
print("file is: " + InputFile)


FileExist = os.path.exists("./" + InputFile)
if FileExist == False:
    print("huh, file doesnt exist!")
    exit()
else:
    print("yay, no error!")

file = InputFile


filenoext = pathlib.PureWindowsPath(file).stem
ext = ".bat"
filenewname=filenoext+ext
print(filenewname)


f = open(file, 'r')



def replacething(ifile, search, t):
    inp = open(ifile, 'r')
    avar = inp.read()
    inp.close()
    t = t.replace(search, avar)
    return(t)

def writefile(t):
    f = open(filenewname, 'w')
    f.write(t)
    f.close() 

#replace thing
t = f.read()

t = replacething('./var/startoffile.txt', 'sof', t = t)

t = replacething('./var/inv.txt', 'inv', t = t)

t = replacething('./var/and.txt', 'and', t = t)

t = replacething('./var/endoffile.txt', 'eof', t = t)


f.close()
writefile(t)
exit()

