RTLayoutBuilder is a higher abstract to manage layout. Most builder use it as it significantly shorten the use of layouts.

Consider the following example:
-=-=-=-=-=-=-=-=-=-=-=-=
v := RTView new.

es := (RTBox new size: 8) elementsOn: (1 to: 100).
v addAll: es.

lb := RTLayoutBuilder new.
lb horizontalFlow.
lb setUpElements: es.

v
-=-=-=-=-=-=-=-=-=-=-=-=