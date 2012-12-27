accessing
activeEditor: anEditor
    | morph systemWindow |
    activeEditor == anEditor
        ifTrue: [ ^ self ].
    activeEditor
        ifNotNil: [ 
            activeEditor morph
                delete;
                releaseCachedState.
            activeEditor modelSleep ].
    activeEditor := anEditor.
    morph := activeEditor morph.
    systemWindow := self topView.
    systemWindow addMorph: morph unlock.
    systemWindow world startSteppingSubmorphsOf: morph.
    systemWindow layoutChanged