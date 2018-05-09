#!/projectnb/nonadmd/theavey/anaconda_envs/py3.6/bin/python

import shlex
import subprocess

cl = shlex.split('iostat -c 2 2')

proc = subprocess.run(cl,
                      stdout=subprocess.PIPE,
                      stderr=subprocess.STDOUT,
                      universal_newlines=True)

print(proc.stdout.splitlines()[6].split()[3])

