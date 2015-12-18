A RTShape is an element factory. A shape is shared amoung all the elements created by the shape. We therefore have the following relations

An ''element'' is a graphical representation of an arbitrary object. An element is combined with ''shapes'' to define its visual representation. A shape describes a visual primitive representation such as a box, a circle, a line or a textual label. Shapes can be combined to form elaborated shapes. An end user sees elements and interacts with these elements by using the mouse and keyboard. A Roassal element is a compound object that contains (i) a two dimensional spatial location; (ii) a set of interactions; (iii) a combination of shapes; (iv) a model, which is any arbitrary object that belongs to the domain model provided by the user.


shape := RTBox new size: 10.
e1 := shape elementOn: 'hello'.
e2 := shape elementOn: 'world'.

self assert: e1 shape == e2 shape.

self assert: e1 shape ~~ e1 trachelShape.
self assert: (e1 shape isKindOf: RTBox).
self assert: (e1 trachelShape isKindOf: TRBoxShape).

self assert: e1 trachelShape ~~ e2 trachelShape.
