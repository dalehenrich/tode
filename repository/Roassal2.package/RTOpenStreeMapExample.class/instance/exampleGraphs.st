sources
exampleGraphs

	| v map e paris newyork london data allGraphElements |

	v := RTView new.
	map := RTOSM new.
	e := map element.


	v add: e.

	paris := 48.8567 @ 2.3508.
	newyork := 40.7127 @ -74.0059.
	london := 51.507222@ -0.1275.
	
	v @ RTDraggableView.
	
	data := Array with: (Array with: paris with: #(10 5 10 3 10 6 8)) with:
					(Array with: london with: #(5 3 3 -5 )) with:
					(Array with: newyork with: #(5 -2 10 15 -10)).
	
	data do: [ :tupple |
			| grapher dataSet |
			grapher := RTGrapher new.
			grapher extent: 150 @ 100.
			
			dataSet := RTStackedDataSet new 
				points: tupple second.
			dataSet barShape width: 10; color: Color red.
			grapher add: dataSet.

			grapher axisY.
			grapher axisX noLabel; noTick.
			grapher build.

			allGraphElements := grapher view elements.
			v addAll: allGraphElements.
			allGraphElements translateTo: (map latLonToRoassal: tupple first)
		
	].
	
	v canvas camera translateTo: (map latLonToRoassal: paris).
	v canvas camera noInitializationWhenOpen.
	v canvas camera scale: 0.3.
	^ v