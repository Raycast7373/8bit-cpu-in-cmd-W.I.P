import os
import fileinput
import sys
from shutil import copyfile
import pathlib
import sys, getopt

InputFile = (sys.argv[1])
OutputFile = (sys.argv[2])

print("Input file: ", InputFile)
print("Output file: ", OutputFile)


print("file is: " + InputFile)

FileExist = os.path.exists("./" + InputFile)
if FileExist == False:
    print("huh, file doesnt exist!")
    exit()
else:
    print("yay, no error!")

file = InputFile

f = open(file, 'r')

def replacething(ifile, search, t):
    inp = open(ifile, 'r')
    avar = inp.read()
    inp.close()
    t = t.replace(search, avar)
    return(t)

def writefile(t):
    f = open(OutputFile, 'w')
    f.write(t)
    f.close() 


#replace thing
t = f.read()

t = replacething('./var/startoffile.txt', 'sof', t = t)

t = replacething('./var/1bitinput.txt', '1bi', t = t)

t = replacething('./var/2bitinput.txt', '2bi', t = t)

t = replacething('./var/inv.txt', 'inv', t = t)

t = replacething('./var/and.txt', 'and', t = t)

t = replacething('./var/buf.txt', 'buf', t = t)

t = replacething('./var/nand.txt', 'nand', t = t)

t = replacething('./var/nor.txt', 'nor', t = t)

t = replacething('./var/xnor.txt', 'xnor', t = t)

t = replacething('./var/xor.txt', 'xor', t = t)

t = replacething('./var/or.txt', 'or', t = t)

t = replacething('./var/endoffile.txt', 'eof', t = t)
f.close()
writefile(t)
exit()
