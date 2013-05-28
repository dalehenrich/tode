private
proxyEnvironment
  proxyEnvironment
    ifNil: [ 
      proxyEnvironment := view model topez proxyBehaviorClass new
        topez: view model topez;
        yourself ].
  ^ proxyEnvironment