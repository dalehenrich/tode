accessing
unregisterShellWindow: aWindow
  | theShell index |
  theShell := aWindow model cliShell.
  self shellWindows remove: aWindow ifAbsent: [  ].
  index := windows indexOf: aWindow.
  index > 0
    ifTrue: [ windows at: index put: nil ].
  windows
    do: [ :window | 
      window ~~ nil
        ifTrue: [ 
          (window ~~ aWindow and: [ window model topez shell == theShell ])
            ifTrue: [ 
              window model windowIsClosing.
              window delete ] ] ]