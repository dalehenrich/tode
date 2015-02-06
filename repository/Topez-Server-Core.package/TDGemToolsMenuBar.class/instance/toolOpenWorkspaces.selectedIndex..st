menu actions
toolOpenWorkspaces: listElement selectedIndex: index
  '"Try the following tode script commands, instead:
cd              # cd to /home
touch st sample # create a smalltalk node named sample (`man touch` for more info)
edit sample     # the workspace is saved to disk in the home dir for the current stone
./sample        # returns the result of evaluating the smalltalk in the st node
rm sample       # delete the sample node ... when done
"'
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'workspace')
        windowLabel: 'Workspace on ' , nil printString).
  ^ true