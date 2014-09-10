import sys
import os

def process(filename):
   
   with open(filename, "r") as infile:
      for line in infile:
         line = line.strip()
         if len(line) == 0 or line[0] == '#':
            continue
         try:
            (dvcs, name, repo) = line.split(",")
         except:
            print("Bad input line; not in format: dvcs,name,repo");
            continue
         print("Processing %s" % repo)
   
         if dvcs == 'hg':
            os.system("./hg.update.sh %s %s" % (name, repo))
         elif dvcs == 'git':
            os.system("./git.update.sh %s %s" % (name, repo))
         else:
            print("unknown method %s -- ignoring" % dvcs)

process("examples.in")
