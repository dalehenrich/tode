*tode-gemstone-core3x
gsmfc
  "
  gs mfc [--noCommit] [--threads=<maxThreads>] [--wait=<wait-seconds>] 
         [--buffer=<page-buffer-size>] [--cpu=<percent-cpu-active-limit>]
"

  self
    getSubcommandOptsMixedLongShort:
      {#('noCommit' nil #'none').
      #('threads' nil #'required').
      #('wait' nil #'required').
      #('buffer' nil #'required').
      #('cpu' nil #'required')}.
  self gsMfc