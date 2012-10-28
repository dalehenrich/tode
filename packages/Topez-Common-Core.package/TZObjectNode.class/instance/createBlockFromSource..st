as yet unclassified
createBlockFromSource: blockSource
    "monkey business required (apparently) to create block with correct TEMP NAMES GENERATED"

    | methodNode compiledMethod block blockSourceStream |
    blockSourceStream := blockSource readStream.
    methodNode := Compiler new
        from: blockSourceStream
            class: nil class
            context: nil
            notifying: nil;
        translate: blockSourceStream noPattern: true ifFail: [ nil ].
    compiledMethod := methodNode generateWithTempNames.
    block := nil withArgs: #() executeMethod: compiledMethod.
    ^ block