gs
gsfileoutManPage
  | manPage |
  manPage := TDManPage
    commandName: 'fileout'
    sourceMethod: self name asString , ' class>>gsfileoutManPage'
    fromString:
      'NAME
  gs fileout - Fileout Classes, Categories or Packages

SYNOPSIS
  gs fileout --directory=<filesystem-path> [--class|--package|--category] <fileout-pair>...

DESCRIPTION
  Fileout classes, categories or packages to the given directory.

  At leasy one <fileout-pair> must be specified. A <fileout-pair> consists of the name of a
  category, class, or package and the name of the file.

OPTIONS
  --directory=<filesystem-path>
    <filesystem-path> may be fully qualified or relative to the PWD env variable with which 
    the gem was started. In general, a fully qualified path should be used. Each of the files
    is created in the given directory

  --category
    The name in the <fileout-pair> will be interpreted as a class category name and all of the
    the classes located in that category will be filed out to the given file.

  --class
    The name in the <fileout-pair> will be interpreted as a class name and the given class 
    will be filed out to the given file.

  --package
    The name in the <fileout-pair> will be interpreted as a package name and all of the
    the classes and extension methods contained in the package will be filed out to the 
    given file.

EXAMPLES
  gs fileout --directory=/tmp/fileouts --category Metacello-Core-Scripts metacello-scripts.gs
  gs fileout --directory=/tmp/fileouts --class TDGemStoneTool gstool.gs
  gs fileout --directory=/tmp/fileouts --package Tode-GemStone-Server-Tests tests.gs
'.
  ^ manPage