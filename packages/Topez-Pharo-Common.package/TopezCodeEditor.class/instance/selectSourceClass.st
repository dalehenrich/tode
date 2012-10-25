accessing
selectSourceClass
    | topez evaluator |
    topez := editor topez.
    ((TZProxyObject clickBlocks at: 'TZClassElement') at: #'singleClick') first
        value: self sourceElement
        value: topez
        value: editor