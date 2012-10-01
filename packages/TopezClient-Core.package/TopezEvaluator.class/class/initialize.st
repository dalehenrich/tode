class initialization
initialize
    "self initialize"

    Commands := Dictionary new.
    self
        runCmd: Commands;
        continueCmd: Commands;
        stepCmd: Commands;
        yourself