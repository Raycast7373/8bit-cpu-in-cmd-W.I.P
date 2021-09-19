import os
import fileinput
import sys
from shutil import copyfile

InputFile = input("enter input file name:")
print("file is: " + InputFile)


FileExist = os.path.exists("./" + InputFile)
if FileExist == False:
    print("huh, file doesnt exist!")
    exit()
else:
    print("yay, no error!")

file = InputFile

f = open(file,  'r')

t = f.read()
print(t)
f.close()

def replacement(file, previousw, nextw):
   for line in fileinput.input(file, inplace=1):
       line = line.replace(previousw, nextw)
       sys.stdout.write(line)

#definitions

#start of file
sofile = "./var/startoffile.txt" #what to replace it with
sofile = "StartOfFile" #what to replace


sof = open(sofile,  'r')
soo = sof.read()
sof.close()

#inv
invfile = "./var/inv.txt"
inv = "inv"


invf = open(invfile,  'r')
invo = invf.read()
invf.close()

replacement(file, var1, var2)
