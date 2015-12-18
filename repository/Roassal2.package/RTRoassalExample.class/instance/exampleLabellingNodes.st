sources
exampleLabellingNodes

"La parte superior entre barras define las variables"
| vista e1 e2 e3 e4 line |

"Se crea un objeto tipo vista"
vista := RTView new.

"Definimo los elementos, que denominamos simplemente e1, e2, etc, con
su color y su tamaño"
e1 := (RTEllipse new color: (Color blue alpha: 0.4); size: 20) elementOn: 'hello'.
e2 := (RTEllipse new color: (Color red alpha: 0.4); size: 20) elementOn: 'Bonjour'.
e3 := (RTEllipse new color: (Color yellow alpha: 0.4); size: 20) elementOn: 'Gutten Tag'.
e4 := (RTEllipse new color: (Color green alpha: 0.4); size: 20) elementOn: 'BuenGiorno'.

"Adicionamos los elementos a la vista"
vista add: e1; add: e2; add: e3; add: e4.

"Decimos que los elementos antes definidos se podrán arrastrar"
e1 @ RTDraggable @ RTLabelled.
e2 @ RTDraggable @ RTLabelled.
e3 @ RTDraggable @ RTLabelled.
e4 @ RTDraggable @ RTLabelled.


"Decimos qué propiedades va a tener la línea que los conecta los elementos"
line := RTArrowedLine new color: Color red.
line withOffsetIfMultiple.

"Decimos de dónde a dónde van las líneas que unen los elementos en la vista"
vista add: (line edgeFrom: e1 to: e2).
vista add: (line edgeFrom: e2 to: e1).
vista add: (line edgeFrom: e1 to: e2).
vista add: (line edgeFrom: e2 to: e2).
vista add: (line edgeFrom: e3 to: e4).


"Decimos que dispocisión van a tener los elementos en la vista. 
En este caso se van a disponer de manera circular"
RTCircleLayout on: (Array with: e1 with: e2 with: e3 with: e4 ).

"Abrimos la vista"
vista canvas.

^ vista