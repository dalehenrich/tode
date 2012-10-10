*topez-pharo-common
keyUp: evt
   self window
        ifNotNil: [ :win | 
            (win handlesKeyboard: evt)
                ifTrue: [ 
                    (win keyStroke: evt)
                        ifTrue: [ ^ true ] ] ]