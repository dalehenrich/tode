private
createFramesinFork: contextBlock exception: ex
  "when dealing with blocks created by compiling a method from source, the only reliable way to get information from the active process is by forking a separate process "

  | stack process sem frames blockFrame syntheticFrameMap nestedArgAndTempVarNamesMap argAndTempNames theContext |
  process := GsProcess _current.
  sem := TransientSemaphore new.
  [ stack := self stackClass new
    process: process;
    exception: ex;
    createFrames;
    yourself.
  frames := stack frames.
  blockFrame := frames
    detect: [ :frame | frame printString = '[] in Executed Code' ].
  syntheticFrameMap := blockFrame syntheticFrameMap.
  nestedArgAndTempVarNamesMap := blockFrame nestedArgAndTempVarNamesMap.
  argAndTempNames := blockFrame argAndTempNames.
  theContext := blockFrame thisContext.
  sem signal ] fork.
  sem wait.
  contextBlock
    value: blockFrame
    value: syntheticFrameMap
    value: nestedArgAndTempVarNamesMap
    value: argAndTempNames
    value: theContext