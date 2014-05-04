manPages
editManPage
  ^ 'NAME
  edit - Open navigation or text window on object

SYNOPSIS
  edit [--help]
  edit [--aspect=<aspect>] [<path>]...
  edit [--inspect|-i] [<path>]...
  edit [--view|-v] [<path>]...
  edit [--print|-p] [<path>]...

DESCRIPTION
  The Edit command opens a window on the object specified by the path. The exact
  window that is opened depends upon the type of window associated with the 
  specified aspect. 

  The aspect #view and #inspect are defined for all objects. In general the #view
  and #inspect aspects bring up a navigation windoow for the specified object and only
  in special cases is there a difference between the #view and @inspect windows. 

  Instances of CharacterCollection and AbstractDictionary are two examples where the
  #view and #inspect views are different. 

  The #view for a CharacterCollection instance brings up a text window, while
  the #inspect view brings up a navigation window on the characters of the 
  CharacterCollection.

  The #view for an AbstractDictionary instance brings up a window on a collection
  of the Associations in the dictionary, while the #inspect view brings up a 
  navigation window on the implementation details of dictionary.

  If no apect is specified (--aspect, --view, or --inspect options), the #view
  aspect is used.

  Use the --aspect option to specify a custom aspect.

  Use the --inspect (or -i) option to specify the #inspect aspect.

  Use the --view (or -v) option to specify the  #view aspect.

  If the --print (or -p) option is specified, the printString of the specified object
  is dipslayed in a text window.

EXAMPLES
  edit --help
  edit --aspect=custom /home/node1 /home/node1
  edit --inspect /home/node
  edit --view /home/node
  edit --print /home/node
'