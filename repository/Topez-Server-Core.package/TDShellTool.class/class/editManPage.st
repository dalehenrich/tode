manPages
editManPage
  ^ 'NAME
  edit - Open navigation or text window on object

SYNOPSIS
  edit [--help]
  edit [--editorAspect=<aspect>] [--builderAspect=<aspect>] [<path>]...

  edit [--inspect|-i] [<path>]...
  edit [--navigate|-n] [<path>]...

  edit [--print|-p] [<path>]...

DESCRIPTION
  The `edit` command opens a window on the object specified by the path. If no path
  is specified, the window is opened on objIn.

  There are two aspects that control what you see with the `edit` command: 
  builderAspect and editorAspect.

  If no apect is specified (--aspect, --view, or --inspect options), the #view
  aspect is used.

  Use the --aspect option to specify a custom aspect.

  Use the --inspect (or -i) option to specify the #inspect aspect.

  Use the --view (or -v) option to specify the  #view aspect.

  If the --print (or -p) option is specified, the printString of the specified object
  is dipslayed in a text window.

  BuilderAspect
  -------------
  The builderAspect controls how the object is prepared for display. There are two
  pre-defined builderAspects: #view and #inspect. #view is the default builderAspect.

  For most objects the #view and #inspect builderAspects provide the same structural 
  display. Take dictionaries for example, in most instances it is best to view
  a dictionary as a collection of associations (#view builderAspect), unless, you 
  are interested in peering into the inner workings of the dictionary (#inspect
  builderAspect). 

  EditorAspect
  ------------
  The editorAspect determines which type of window is used to display the 
  builderAspect of the object. There two pre-defined editAspects: #edit and 
  #navigate. #edit is the default editorAspect.

  The #edit editorAspect indicates that the object will be displayed in a text window 
  and the #navigate editorAspect indicates that the object will be displayed in 
  a navigation window (inspector). If no #edit editorAspect is defined for a class,
  then the #navigate editorAspect will be used.

  Summary
  -------
  builder aspect:
	 #view		- normal view (i.e., collection of associations for Dictionary)
	 #inspect - raw object/implementation view

   editor aspect:
	 #edit		 - text code editor (falls back to #navigate)
	 #navigate - structural access via navigator
	 CUSTOM    - custom names for specialized window display

EXAMPLES
  edit --help
  edit --inspect /home/node
  edit --view /home/node
  edit --print /home/node

  edit --buildAspect=view --editorAspect=navigate /home/node1 /home/node1

  eval `Object`; edit --editorAspect=classDefinition 
  eval `Object`; edit --editorAspect=classComment
'