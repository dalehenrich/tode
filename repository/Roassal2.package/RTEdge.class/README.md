RTEdge describes an edge between two RTElement. 

Here is an example:
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
v := RTView new.

ballShape := RTEllipse new size: 30; color: #yourself. 

redBall :=  ballShape elementOn: Color red.
blueBall :=  ballShape elementOn: Color blue.
v add: redBall; add: blueBall.
blueBall translateBy: 80 @ 50.

blueBall @ RTDraggable.
redBall @ RTDraggable.

edge := RTLine edgeFrom: redBall to: blueBall.
" The line above is equivalent to the following two lines:
edge := RTEdge from: redBall to: blueBall.
edge + RTLine.
"
v add: edge.

v
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
