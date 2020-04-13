import subprocess
import os

basedir = os.getcwd()

os.chdir(basedir)

subprocess.call(['./tpch-build.sh'])
