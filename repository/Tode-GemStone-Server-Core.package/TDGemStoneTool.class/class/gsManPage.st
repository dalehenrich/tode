as yet unclassified
gsManPage
  ^ 'NAME
  gs - execute gemstone commands

SYNOPSIS
#  gs dataDir
  gs fileout -d<filesystem-path>|--directory=<filesystem-path> 
             [--class|--package|--category] <fileout-pair>...
  gs halt -m|--almostOutOfMemory=<percent>
  gs fileSizeReport
  gs instances <className>
     instances @<class-path>
  gs mfc [<maxThreads>]
  gs mreferences @<object-path>
  gs objectAudit [<maxThreads>]
  gs objectFor <object-oop>
  gs references @<object-path>
  gs sessionDescription
  gs version

DESCRIPTION

  fileout
    -d, --directory  file system path to target directory where fileout files will
                     be written
        --class      fileout class. the <fileout-pair> is: <class-name> <file-name>
        --package    fileout package. the <fileout-pair> is: <package-name> <file-name>
        --category   fileout category. the <fileout-pair> is: <category-name> <file-name>

    example:

      gs file --directory=/tmp/fileouts --class TDGemStoneTool gstool.gs
      gs file -d/tmp/fileouts --package Index-Tests indexTests.gs
'