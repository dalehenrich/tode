running
tearDown
    super tearDown.
    #(#'Animal' #'AnimalShadow' #'AnimalShadowRef' #'TestStep')
        do: [ :clName | Smalltalk at: clName ifPresent: [ :cl | cl removeFromSystem ] ]