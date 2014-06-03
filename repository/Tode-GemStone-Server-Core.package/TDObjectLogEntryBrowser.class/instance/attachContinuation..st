continuations
attachContinuation: objectLogEntry
  | process |
  process := objectLogEntry continuation.
  (TDDebugger new
    topez: topez;
    attachProcess: process;
    windowLabel: objectLogEntry labelString , ' @ ' , objectLogEntry stampString;
    yourself) open