# Minimal tODE API

The **Minimal tODE API** is intended to be the basis for porting tODE clients to Pharo5.0.
With Pharo5.0, the FFI api was changed which means that the GemStone/S GCI code being used by tODE in Pharo3.0 and Pharo4.0 must be ported to the new [Unified FFI api][1].

With the help of [Mariano Martinez-Peck][2], the [GemStone-GCI project][3] was ported to Pharo5.0 and I built the **Minimal tODE API** on top of the [GemStone-GCI project][3].

## Installation
A [GemStone/S 64][9] stone and a standard tODE client is needed for using the **Minimal tODE API**.
Technically you don't need a tODE client, but if you want to look at server-side code, it is necessary.
I recommend installing [GsDevKit_home][5] and using the following steps from the [GsDevKit_home installation instructions][6]:

```
# Install GsDevKit_home
#
git clone https://github.com/GsDevKit/GsDevKit_home.git
cd GsDevKit_home
. bin/defHOME_PATH.env   # define $GS_HOME and add $GS_HOME/bin to $PATH
installServerClient

# Create tODE client
#
createClient tode

# Start tODE client
#
startClient tode
```

The **Minimal tODE API** is built to run against a standard [tODE][4] stone install, but since both the **Minimal tODE API** and the [GemStone-GCI project][3] are under active development, it is a good idea to create a local clone of the [GemStone-GCI project][3] and load it into the stone being used for **Minimal tODE API** development:

```
# Create Minimal tODE API stone called gci_330 with GemStone-GCI installed
#
#  -u option causes the project entry for the GemStone-GCI to be downloaded
#  -i option causes the GemStoneGCI project to be cloned into $GS_HOME/shared/repos
#     if not already present 
#  -l option causes the GemStoneGCI project to be loaded into the stone, using the
#     specification in the project entry
#
createStone -u http://gsdevkit.github.io/GsDevKit_home/GemStoneGCI.ston -i GemStoneGCI -l GemStoneGCI gci_330 3.3.0


# Create Minimal tODE API client development image
#
#  -f option is there so that this script can be used to either create a new
#     client or update an existing client
#  -t option specifies that a non-tODE client is to be created. We don't want
#     the code for a standard tODE client to be present.
#  min_50 is the name of the client
#  -l option specifies that the projects in $GS_HOME_/shared/repos will be 
#     locked in the client image and thus local clones will be used.
#  -v option specifies that the client should be created using Pharo5.0
#  -z options specifies that the load expression int the 
#     $GS_HOME/shared/repos/tode/.minimal.smalltalk.ston file be used.
#      
createClient -f -t pharo min_50 -l -v Pharo5.0 -z $GS_HOME/shared/repos/tode/.minimal.smalltalk.ston

# Start Minimal tODE API client development image
#
#  -s option indicates that the default session name is gci_330 and that the
#     Minimal tODE API tests will be run against the gci_330 stone
#
startClient min_50 -s gci_330
```

## Minimal tODE API
1. [Session creation](#session-creation)
2. [Execute tODE commands](#execute-tode-commands)
3. [Inspecting an object](#inspecting-an-object)

####Session creation

```Smalltalk
  | sessionDescription client |
  sessionDescription := GsDevKit_home
    sessionDescriptionNamed: SCIGemStoneServerConfigSpec defaultSessionName.
  client := (TDMinimalClient loginWith: sessionDescription)
    debugMode: false;  "set to true to debug errors"
    yourself.
```

####Execute tODE commands
Simple expressions return a Text object with the display string for the result:

```Smalltalk
  "list /home contents"
  client evaluate: 'cd /home; ls'.
  "execute a Smalltalk expression"
  client evaluate: 'eval `3+4`'.
```

The result of a tODE command is available as the **objIn** for the following command.
In the case of the `eval` command, **objIn** is the `self` context for the expression.
The following result should be `10`:

```Smalltalk
  client evaluate: 'eval `3+4`; eval `self+3`'.
```

In tODE, the results of the commands are not returned to the client, because the client is not expected to be able to work with server-side objects. The *display text* of the result is returned so that the client can display a result to the user.

####Inspecting an object
The following three tODE commands result in an inspector being brought up on an object:

```Smalltalk
  client evaluate: 'eval `3+4`; edit'.
  client evaluate: 'eval `3+4`; inspect'.
  client evaluate: 'eval `(3+4) inspect`'.
```

Each of these expressions returns `tODE ERROR: MessageNotUnderstood: TDMinimalClient>>editStonElement:`, because in the **Minimal tODE API**, no GUI methods are implemented, if you want to see the error stack, set `debugMode` to `true` and try again:

```Smalltalk
  client debugMode: true.
  client evaluate: 'eval `3+4`; edit'.
  client evaluate: 'eval `3+4`; inspect'.
  client evaluate: 'eval `(3+4) inspect`'.
```

The `#editStonElement:` is a callback message from the server to the client (**ClientForwarderSend** on the stack indicates that the source of the message is the server).

In a full implementation of the **tODE API**, the `#editStonElement:` message us implemented to open the appropriate windows.
In the **Minimal tODE API** you can arrange to implement `editSTONElement:` using the *service registry*. In this case we will inspect the **TodeClientListElement** instance that is used to build the inspector window for **tODE**:

```Smalltalk
  client
    registerService: [ :stonString :aClient | 
      | clientElement |
      clientElement := aClient objectSerializer fromString: stonString.
      clientElement inspect.
      1	"windowId" ]
    for: #'editStonElement:'.
  client evaluate: 'eval `3+4`; edit'.
```

The most interesting field in the `clientElement` at this point is the `firstList` field:

![firstList inspector view][7]

which you should recognize as the fields visible in the **tODE** inspector window:

![tode inspector window][8]

[1]: http://smalltalkhub.com/#!/~Pharo/FFI-NB
[2]: https://github.com/marianopeck
[3]: https://github.com/GsDevKit/GemStone-GCI#gemstone-gcihttps://github.com/GsDevKit/GemStone-GCI#gemstone-gci
[4]: https://github.com/dalehenrich/tode
[5]: https://github.com/GsDevKit/GsDevKit_home
[6]: https://github.com/GsDevKit/GsDevKit_home#installation
[7]: ./images/minimalClientElementpng
[8]: ./images/todeInspectorView.png
[9]: https://gemtalksystems.com/products/gs64/
