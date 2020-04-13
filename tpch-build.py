import subprocess
import os

basedir = os.getcwd()

print (basedir)

os.chdir(basedir)

subprocess.call(['./tpch-build.sh'])
