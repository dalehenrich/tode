accessing
windowActive: aSystemWindow
  | index |
  index := windows indexOf: aSystemWindow.
  index == 0
    ifTrue: [ ^ self ].
  activeWindowIndex := index