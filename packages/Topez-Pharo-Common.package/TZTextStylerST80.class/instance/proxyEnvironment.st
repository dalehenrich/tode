private
proxyEnvironment
  proxyEnvironment
    ifNil: [ 
      proxyEnvironment := TZGemStoneProxyBehavior new
        topez: view model topez;
        yourself ].
  ^ proxyEnvironment