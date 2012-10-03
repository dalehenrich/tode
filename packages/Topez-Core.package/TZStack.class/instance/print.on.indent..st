proxy
print: proxy on: aStream indent: indent
    <TZProxy: #'basic'>
    | currentFrameIndex |
    currentFrameIndex := proxy currentFrameIndex.
    1 to: proxy indexed size do: [ :frameIndex | 
        | stackFrame |
        stackFrame := proxy at: frameIndex.
        frameIndex = currentFrameIndex
            ifTrue: [ aStream nextPutAll: '==> ' ].
        stackFrame printOn: aStream indent: indent ]