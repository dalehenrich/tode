browse
browselistManPage
  | manPage |
  manPage := TDManPage
    commandName: 'list'
    fromString:
      'NAME
  browse list - View method definitions loaded from nodes

SYNOPSIS
  browse list <definitionList-path>...

DESCRIPTION
  The `browse list` command brings up a definition list window on the given
  definition lists.

  The definitionList path specifies a node where a definition list can be 
  found. The node may be a Smalltalk node with contents that return a 
  definition list:

    {(TDMethodDefinition
      className: ''TDShellTool''
      isMeta: true
      selector: #browselistManPage).
     (TDMethodDefinition
      className: ''TDShellTool''
      isMeta: true
      selector: #browseManPage)}

  or any other kind of node that returns a list of definitions.

  Use the `tode it` menu to evaluate the following:

    touch st /tmp/sessionTemps/methodDefinitions; edit

  then paste the above expression into the window and `accept` the contents,
  then use the `tode it` menu item to evaluate the following:

    browse list /tmp/sessionTemps/methodDefinitions

EXAMPLES
  browse list /tmp/sessionTemps/methodDefinitions
'.
  ^ manPage