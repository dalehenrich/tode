running
tearDown
    super tearDown.
    Smalltalk at: #'Animal' ifPresent: [ :cl | cl removeFromSystem ].
    Smalltalk at: #'TestStep' ifPresent: [ :cl | cl removeFromSystem ]