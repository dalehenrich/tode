as yet unclassified
psDebug: process
  ^ (TDDebugger new
    topez: topez;
    debugProcess: process;
    windowLabel: process printString;
    yourself) open