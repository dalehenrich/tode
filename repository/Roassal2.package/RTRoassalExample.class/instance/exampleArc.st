sources
exampleArc

| view shape label |
view := RTView new.
view @ RTDraggableView.

shape := RTArc new
    innerRadius: [ :i | i *50];
    externalRadius: [ :i | (i * 50) + 4];

    alphaAngle: 45;
    betaAngle: 135;
    color: Color black.
elems := shape elementsOn: (1 to: 10).
view addAll: elems.
elems @ RTHighlightable.

label := RTLabelled new text: #yourself.
label bottomLeft.
elems @ label.

^ view