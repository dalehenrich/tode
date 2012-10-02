proxy
print: proxy on: aStream indent: indent
    <TZProxy>
    | cf stack indexed |
    cf := proxy currentFrame.
    proxy do: [ :stackFrame |
        stackFrame frameIndex = cf
            ifTrue: [ aStream nextPutAll: '==> ' ].
        stackFrame printOn: aStream indent: indent ]