import subprocess
import os

workingdir = os.getcwd()
basedir = os.path.dirname(os.path.realpath(__file__))

print (workingdir)
print (basedir)

os.chdir(basedir)

subprocess.call(['./tpch-build.sh'])
