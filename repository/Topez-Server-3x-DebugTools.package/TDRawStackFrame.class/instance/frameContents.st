accessing
frameContents
  "Private.  Returns an Array describing the specified level in the receiver. 
 aLevel == 1 is top of stack.  If aLevel is less than 1 or greater than
 stackDepth, returns nil.  

 The result Array contains:
 offset item
 -----  -----
   1    gsMethod  (a GsNMethod)
   2    ipOffset    (absolute instruction offset in portable code
                     negative means a stack breakpoint is present)
   3    frameOffset (always nil , not compatible with Gs64 v2.x)
   4    varContext
   5    saveProtectedMode (always nil in v3.0)
   6    markerOrException (always nil in v3.0)
   7    homeMethod if gsMethod is for a block, otherwise nil .
   8    self   (possibly nil in a ComplexBlock)
   9    argAndTempNames   (an Array of Symbols or Strings)
  10    receiver
  11... arguments and temp values, if any"

  "Notes to GemStone implementors:

 If result of this method is changed, you must change tpaux.c in the 
 topaz C sources, other methods in this class, and the code for primitive 195.

 Note that if execution stops at a breakpoint at the entry to a method,
 the method temporaries may not be allocated yet and so some or all of
 the method temporaries may be missing from the result."

  frameContents
    ifNil: [ frameContents := self process _frameContentsAt: self frameIndex ].
  ^ frameContents