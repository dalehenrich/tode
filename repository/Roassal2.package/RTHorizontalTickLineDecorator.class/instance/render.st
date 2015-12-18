drawing
render	
	| axis yLine mm |
	axis := builder getAxisY.
	mm := RTMetricNormalizer new.
	(self minValue to: self maxValue by: self step) do: [ :y |
		yLine := mm
						getValue: y
						min: self fromPoint y 
						max: self toPoint y
						minValue: self minValue 
						maxValue: self maxValue.
		self lineFrom: 	builder getAxisX fromPoint x @ yLine to: builder getAxisX toPoint x @ yLine.
		]