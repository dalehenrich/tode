private
step: contextOop level: level through: throughBool
  self _errorIfCallInProgress.
  self _gciLibrary GciStep__: contextOop _: level _: throughBool.
  ^ self
    waitForResult;
    lastResult