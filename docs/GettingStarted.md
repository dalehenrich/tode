#Getting Started with tODE

Use the [todeClient][35] script to start up a tODE client image:

```Shell
todeClient
```

*Note: the `-p` option allows you maintain and run multiple client images*.


###tODE System Menu

The tODE System Menu:

![tODE System Menu][37]

is your entry point for setting up and controlling tODE.

1. [tODE Shell](#tode-shell)
1. [tODE Edit](#tode-edit)
2. [tODE Test Login](#tode-test-login)
3. [tODE Install](#tode-install)
4. [tODE Update](#tode-update)
5. tODE Workspaces
6. [tODE Window Layout](#tode-window-layout)
7. Update tODE Client
8. Define Web Edition Root
8. [Define Dev Kit Root](#define-dev-kit-root)
9. [Refresh tODE menu](#refresh-tode-menu)

####tODE Shell

Use the `tODE Shell` menu item to select the stone to log into:

![tode Shell menu][36]

and open the tODE shell console:

![tODE Shell console][38]

####tODE Edit
The `tODE Edit` menu items allow you to modify the session descriptions from within the client image:
 
![tode edit menu item][39]

The menu item brings up a client workspace:

![tode edit workspace][43]

*Note that the workspace is not a file editor, so you need to execute the workspace to update the session disk.* 

The name of the session description file is derived from the `name` of the session description. 
If you change the name of the description you are effectively creating a new description.

####tODE Test Login
The `tODE Test Login` menu item makes it possible to collect diagnostic information when you are having trouble logging into a stone. The menu item is also useful to ping a particular stone to see if it is running.

![tode test login menu item][40]

Besides the menu item the `testLogin` command can be invoked:

1. via the **testLogin:** message in a client-side workspace:

   ```Smalltalk
   TDShell testLogin: 'gemtalk'
   ```
   
3. or, via the command line:

   ![testLogin shell][41]

This is an example of a successful test login:

![successful test login][42]

*Note that while there was a successful test, the message does indicate that tODE is not installed. See the [tODE installTodeStone script][46] for installing tODE on a server.*

Here's an example of an error message:

![testLogin output][20]

If the test login error message does not give you enough information for you to solve the problem, copy the result of the `testLogin` command and send mail to the [GLASS mailing list][28].

####tODE Install
Use the `tODE Install` menu item to install tODE on the selected stone. 
Use this menu item if you did not use the [createTodeStone][3] script to create the stone:

![tode Install menu][44]

The menu item executes the tode script located in the file `$GS_HOME/tode/client/scripts/installTode`:

```Shell
updateClient --clientRepo=github://dalehenrich/tode:master/repository
installServer --clientScriptPath=scripts
bu backup tode.dbf
mount --todeRoot home /
bu backup home.dbf
cd 
```

*Note that the script starts by updating the client-side code and then updates the server-side code.*

You can customize `installTode` script to perform additional commands, if needed.

The server-side load scripts can be found in the `$GS_HOME/tode/server/scripts` directory.

**You are encouraged to use the [installTodeServer][46] shell script to install tODE into your Dev Kit server.**

####tODE Update
Use the `tODE Update` menu item update the tODE project on the selected stone:

![tode Update menu][45]

The menu item executes the tode script located in the file `$GS_HOME/tode/client/scripts/updateTode`:

```Shell
updateClient --clientRepo=github://dalehenrich/tode:master/repository
updateServer --clientScriptPath=scripts
bu backup home.dbf
```

You can customize `updateTode` script to perform additional commands, if needed.

The server-side load scripts can be found in the `$GS_HOME/tode/server/scripts` directory.

**You are encouraged to use the `project load Tode` command in the tODE shell to perform updates of the tODE project.**
####tODE Window Layout
Use the `tODE Window Layout` menu item to choose a window layout for your client image:

![tode window layout menu][52]

The window layout is scaled based on the size of the Pharo client window, so you need to re-select a window layout whenever you change the size of the Pharo client window.

Here are samples of three of the available window layouts:

| layout | sample|
|--------|-------|
| standard-small|![standard-small][49]|
|standard-medium|![standard-medium][50]|
|standard-large|![standard-large][51]|

####Define Dev Kit Root
The `Define Dev Kit Root` menu item:

![dev kit root menu][53]

tells the Pharo client where to find the `$GS_HOME/tode` directory.
The scripts and session descriptions used by the pharo client are found in the `$GS_HOME/tode` directory.

A `todeClientImage` can be retargeted to a different GsDevKit installation by changing the directory.

####Refresh tODE menu
The `Refresh tODE menu` menu item:

![refresh tode menu menu][54]

rebuilds the tODE system menu. The menu should automatically update.


### Add Project to tODE video

This short video describes how to add your own project to tODE. It also serves as an introduction to the tODE development environment:

<a href="http://www.youtube.com/watch?feature=player_embedded&v=AlB1B0wtX8c
" target="_blank"><img src="http://img.youtube.com/vi/AlB1B0wtX8c/0.jpg" 
alt="topez: And Now for Something Completely Different" width="480" height="360" border="10" /></a>

## Mono-spaced fonts
While you are in the Pharo client window, it is a good time to choose a new font. tODE works best with a mono-spaced font and you can choose a font from those installed on your system using the Pharo System Settings menu item:

![pharo system settings][1]

which opens the `Settings browser`:

![pharo settings brower][2]

1. Click on the `Default font button` and choose a font from those listed in the window that pops up.
You may need to `Update` to get the system fonts loaded into the Pharo client.
2. Click on the `Force All button` to get your font choice propogated to the other choices.

Don't forget to save the image after making client-side changes.

## Window Layout
Now is also a good time to change the size of the Pharo client window. 
When you change the size of the Pharo client window, you need to use the [tODE Window Layout menu item](#tode-window-layout) to reset or change the window layout. 
The initial layout (`standard-small`) is probably not a good choice for high resolution displays. 
`standard-medium` or `standared-large` are better choices depending upon the resolution of your display and the size of the font that you have chosen.

Don't forget to save the image after making client-side changes.

[1]: images/pharoSystemSettingsMenu.png
[2]: images/pharoSystemSettingsDialog.png
[3]: https://github.com/GsDevKit/gsDevKitHome/blob/master/README.md#createtodestone
[20]: docs/images/testLoginOutput.png
[28]: http://lists.gemtalksystems.com/mailman/listinfo/glass
[35]: https://github.com/GsDevKit/gsDevKitHome/blob/master/bin/todeClient
[36]: images/todeShell.png
[37]: images/todeSystemMenu.png
[38]: images/todeShellConsole.png
[39]: images/todeEditMenu.png
[40]: images/todeTestLoginMenu.png
[41]: images/todeTestLoginShell.png
[42]: images/todeTestLoginSuccess.png
[43]: images/todeEditWorkspace.png
[44]: images/todeInstallMenu.png
[45]: images/todeUpdateMenu.png
[49]: images/standardSmallLayout.png
[50]: images/standardMediumLayout.png
[51]: images/standardLargeLayout.png
[52]: images/todeWindowLayoutMenu.png
[53]: images/todeDefineDevKitRootMenu.png
[54]: images/todeRefreshTodeMenu.png

