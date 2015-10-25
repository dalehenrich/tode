built-ins
help
	^self openWorkspace: '
When you type a command into the tODE shell console window, you are automatically logged into the stone specified in the selected session description.

You can use the arrow keys to re-execute commands from the command history.

Command completion is available. Just hit the TAB key and a list of possible matches based on available commands or nodes in the current directory are presented to you.

There are a handful of commands that are built into the client (type `builtins` to see a current list) and do not hit the server immediately.

If you are getting errors connecting to the stone, then you should try using the `testLogin` builtIn to get better diagnostic information. If you are still having trouble send mail to the GLASS mailing list with the output of the `testLogin`.

If you are connecting to the stone, but getting `Command Errors`, then you can try executing the `debugMode --set` command and re-run the command. With `debugMode --set` a server-side debugger will come up instead of issuing an error message. Use `debugMode --clear` to return to default behavior. 

If you are interested in looking at a client-side stack for a `Command Error`, with `debugMode --client=true`, you will be prompted to open a client-side debugger when an error occurs.

' label: 'Help for tODE'.
