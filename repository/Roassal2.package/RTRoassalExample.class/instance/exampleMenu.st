sources
exampleMenu

| classes v n shape es |
classes := RTObject withAllSubclasses.
v := RTView new.
v @ RTDraggableView.
n := RTMultiLinearColorForIdentity new objects: classes.
shape := RTEllipse new size: #numberOfMethods; color: n.
es := shape elementsOn: classes.
es @ (RTMenuActivable new action: #inspect; item: 'browse class' action: [ :e | e model browse ]).
v addAll: es.
RTFlowLayout on: es.
^ v