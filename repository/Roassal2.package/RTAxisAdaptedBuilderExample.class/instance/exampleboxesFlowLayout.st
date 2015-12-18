sources
exampleboxesFlowLayout
| view coll n  b |
view := RTView new.

coll:= #(50 60 80 100 85 10 35).

n := RTMultiLinearColorForIdentity new objects: (coll).

coll do: [ :r | view add: ((RTBox new color: [ :value | n rtValue: r]; size: r) elementOn: r )].

RTFlowLayout new applyOn: view elements.
view elements do: [ :e | e @ (RTPopup text: [:el | el])].

b := RTAxisAdaptedBuilder new.
b view: view.
b margin: 20.
b objects: view elements.
b build.
^ b view