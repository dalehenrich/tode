as yet unclassified
psAttach: process
  ^ (TDDebugger new
    topez: topez;
    attachProcess: process;
    windowLabel: process printString;
    yourself) open