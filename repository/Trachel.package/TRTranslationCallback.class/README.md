TRTranslationCallback is triggered when the shape gets translated. 

Consider the following example:
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
c := TRCanvas new.
b := TRBoxShape new size: 40.
c addShape: b.
callback := TRTranslationCallback new.
callback block: [ :aShape :step | step inspect ].
b addCallback: callback.
b translateBy: 5 @ 10.
c.
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
It opens an inspector because the block is triggered.