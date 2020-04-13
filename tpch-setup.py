import subprocess
import os
import sys

workingdir = os.getcwd()
basedir = os.path.dirname(os.path.realpath(__file__))

print (workingdir)
print (basedir)

os.chdir(basedir)

subprocess.call(['./tpch-setup.sh', sys.argv[1], sys.argv[2]])
