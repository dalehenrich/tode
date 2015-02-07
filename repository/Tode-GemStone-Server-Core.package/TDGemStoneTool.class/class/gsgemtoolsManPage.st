gs
gsgemtoolsManPage
  | manPage |
  manPage := TDManPage
    commandName: 'gemtools'
    fromString:
      'NAME
  gs gemtools - Emulate GemTools Launcher Menus

SYNOPSIS
  gs gemtools

DESCRIPTION
  The `gemtools` command opens a window that lists all of the menu items in the GemTools
  Launcher menu. When you click on an item in the list, the man page for the corresponding 
  tODE command is opened. Selecting a menu item from the hierarchical menu, will perform the
  corresponding command in the tODE environment.

  The purpose of this window is to provide developers who are familiar with GemTools a
  bridge between familiar GemTools commands and their tODE counterparts.

  For best results, you should scan through the command list in the window (you might want to 
  drag the bottom of the window down to make it as tall as your display, so you can more of 
  the commands without scrolling) and click on the items that you frequently use. Then you 
  should read the man page and try typing the command in the console and experiment with the 
  various options. All man pages have an EXAMPLES section at the bottom of the page. By using 
  the `tODE it` menu item, tODE shell expressions can be executed by simply highlighting the 
  expression (similar to the Smalltalk `do it` menuitem).
  
  If you prefer, you can use the menu associated with the window to execute the various 
  GemTools commands. As you become more familiar with tODE, I expect that you will build up
  your own custom tool sets.

  One of the priniciples of tODE is that you should be able to have equal access to command 
  functionality from:

    GUI tools
    Shell tools
    Batch tools (topaz)

  This is accomplished by by basing all GUI functionality upon shell commands (this is why you   are being shown the man page for the commands that implement the various GemTools menu 
  items). tODE commands are written such that the core functionality can be called from 
  Smalltalk. The command line implementation parses the arguments and calls the same api that 
  is used by the GUI, which uses the user interface to collect information from the users.
  Additionally, shell commands return a REAL object as the command result, so not only are
  command results available in the shell console AFTER a command has been executed, but 
  shell commands can be called from Smalltalk using `TDTopezServer>>evaluateCommandString:`.
  This makes it possible to run tODE shell commands from topaz.

  As a simple example, let''s compare the implementation of the `Admin>Repository>List backup 
  files` gemtools menu item, to the `bu list` command. We''ll start by looking at the code 
  for TDGemToolsMenuBar>>repositoryListBackup:selectedIndex: (select the line below and use 
  the `tODE it` menu item to execute the tODE shell command in place):

    browse method --spec TDGemToolsMenuBar>>repositoryListBackup:selectedIndex:

  After you click on the method in the method list window, click in the method source and use 
  the `Window>cloine window` item to make a copy of the method window. Drag the method source 
  to the side of the screen. 

  Next bring up the source for the `bu list` command:

    browse method --spec TDGemStoneTool>>bulist

  It should be pretty clear that both methods are using a common API. The gemtools code is
  invoked from a menu item, while the `bu list` code is invoked from the command line.

  Using shell commands in topaz
  -----------------------------
  If you need to be run tODE shell scripts from a batch environment, then you would use something like the following topaz script:

display oops
level 1
run
| entries |
entries := TDTopezServer evaluateCommandString: ''bu list''.
entries collect: [:each | each name].
%

  Digging Deeper
  --------------
  If you are interested in seeing how the GemTools functions are implemented, start by 
  using the `Window>inspect builder` menu item to open an inspector on the window builder. In
  the inspector, use the `Object>browse class` menu item to bring up a class browser on the 
  window builder class and poke around in the methods. 

  Alternatively you can `tode it` the following tODE shell expression:

    browse method --spec TDGemToolsMenuBar>>menuActionSpec:

  to view the menu specification for all of the commands. You can scan through the commands 
  until you find a menu spec that you are interested in, like the following:

    #(''Class...'' nil #''findClass:selectedIndex:'').

  select the `findClass:selectedIndex:` which is the method that is invoked when
  the menu item is clicked and use the `Browse>implementors of it` menu item to see the 
  implementation of the method.

  If you wanted to create your own tODE shell script based on one of the commands. Start
  by creating a shell file in your /home directory and then open an editor on the script:

    cd /home
    touch sh fc
    edit fc

  Copy the method contents (without the selector) and replace the "WRITE SCRIPT HERE" with the
  paste buffer. Replace any occurences of `self topez` with `topez` as `topez` is supplied as
  an argument to the shell command block. Also remove any returns in the method, as non-local
  returns are not permitted in shell command blocks. You might have to adjust the logic a bit
  to avoid the non-local returns.

  When you are happy with the script, `accept` it and then test the script by executing the 
  following:

    ./fc

  When you are done with your experiment you can delete the shell script:

    rm fc

  GemTools Launcher Menu Items
  ----------------------------
   Transactions
    Commit
    Abort
    Auto Abort
    Auto Commit
    Auto Migrate
   Find
    Class...
    Hierarchy Browser...
    Class References...
    Method...
    String...
    Senders...
    Case Sensitive String...
   Tools
    System Browser
    Open Workspaces
    File Browser
    Process Browser
    Inspect UndefinedSymbols
    Inspect Sent But Not Implemented
    Test Runner
    Monticello
   Admin
    Repository
     List backup files
     Backup
     Restore from Backup
     Mark for Collection
    DoIt
     Changed packages & methods
     Configuration Reports
      Gem Configuration Report
      Stone Configuration Report
     Empty Object Log
     File Size Report
     Object Log
     User Session Report
     Version Report
      Client Version Report
      Gem Version Report
      Stone Version Report
    Browser Preferences
    Commit on Almost Out of Memory
    Popup on debug
    Send Bug Report
   Help
   Debug...
    Remove Continuations from Object Log
    Clear Object Log
    Debug Continuations
   Update...
    Update GemTools Launcher
    Update GLASS

EXAMPLES
  gs gemtools
'.
  ^ manPage