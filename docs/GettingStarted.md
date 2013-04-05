#Getting Started with tODE

*Here are some real rough instructions for getting started with tode, once you've launced a TDShell console.*

The first thing to do is load up some of the scripts that I use for development. Type the following at the shell prompt:

```
  ston import /home/topez /opt/git/topez/ston/import.ston
```

this loads the import.ston file into /home/topez, then

```
  /home/topez/import
```

to load the full set of scripts. After doing this, you can run `/home/load <baseline name>`. Cat the load script to see what Smalltalk gets executed....You can create your own, if you want to load things differently (like with GsDeployer, etc.)...I'm still on the fence about what scripts to supply here ...

For saving, use `mm commit <baseline name>` ... you'll be prompted for a commit message then the dirty packages in that baseline will be saved ... as with the load I'm on the fence about the scripts to supply ... I've done some fancier scripts for the original tode and I've been threatening to blow the dust off them and bring them over ... 

In a pinch you can bring up GemTools ... this is the weakest area and I admit/agree that this area needs more work to be ready for prime time ... I'll be interested in ideas ...

For browsing checkout `man browse` ... you have several options ... the r* variants take regular expressions ... the `browse class` variant interprets the token as regex ... For scripting, see `man find` .... each of the browse commands has a find equivalent that returns a collection.

To create "files" (workspaces) see `man touch` ... you create a file of the chosen type then `edit` the file to create content ... CMD-s saves the "file" ... I haven't hooked CMD-d, etc. so you execute the file to get it to run:

```
  touch st xx
  edit xx
  ./xx
```

The `browse class` command will open the `class browser` windows ... CMD-SHIFT-B in any window (except the shell windows ... probably should work here as well) will either open the `class browser` windows or set the class to the class selected or being inspected in the current window ....

`configs` and `pkgs` open a window on configurations or packages in image ... CMD-SHIFT-E in the `configs` or `pkgs` window opens a class/method list on the selected configuration or package ...

CMD-k sets a breakpoint in a method window ... `man db` for list of debugger commands ... in debugger shell: CMD-i (step into), CMD-o (step over), CMD-t (step thru), CMD-j (db down), CMD-k (db up)....

CMD-o in an empty class/instance selector window opens a method template (CMD-s saves code) ... the windows aren't automatically updated, so use CMD-SHIFT-B to refresh the class view ...

CMD-SHIFT-C copies the window ...

CMD-c, CMD-x, CMD-v does copy, cut, paste. Cut for class removes class from system ... paste of class doesn't put it back:). Cut for method removes method and paste installes method. You can copy a method and then paste in another class. Paste method on a selected class adds method to instance side ... paste of method into instance/class list adds method to appropriate side.

ESC (except in shell window) opens a shell window on the window's model ... 

The `halos` command lists the types of halos available ... `cd .run` after doing a run command to see what you're got cd around ... `ds` for looking at objects ...

`man test` and `man ts` for test stuff ... `test <suite st "file">` where the st "file" is smalltalk code that produces a test suite ...

`man mm` and `man mc` for monticello stuff ... 

`mc dirty` is something I do before commiting ... the script `/home/diff <config name>` produces a diff of the packages for the given configuration ...

