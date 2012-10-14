keyboard handling
minimizeOrRestore
    "Collapse or expand the window, depending on existing state"

    | mc windowEvent |
    Transcript
        cr;
        show: 'hehe'.
    isCollapsed
        ifTrue: [ 
            "Expand -- restore panes to morphics structure"
            self theme settings animationSettings useAnimation
                ifTrue: [ self animateRestoreFromMinimized ].
            isCollapsed := false.	"Bring to front first"
            self
                setBoundsWithFlex: fullFrame;
                comeToFront;
                show.
            mc := self modalChild.
            paneMorphs
                reverseDo: [ :m | 
                    (self model shouldExpandMorph: m)
                        ifTrue: [ 
                            mc ifNil: [ m unlock ].
                            self addMorph: m.
                            self world startSteppingSubmorphsOf: m ] ].
            self activate ]
        ifFalse: [ ^ super minimizeOrRestore ].
    self layoutChanged.	"This gets invoked only if the taskbar is present, see sender of minimizeOrRestore"
    windowEvent := self isMinimized
        ifTrue: [ WindowCollapsed new ]
        ifFalse: [ WindowExpanded new ].
    windowEvent window: self.
    self announce: windowEvent