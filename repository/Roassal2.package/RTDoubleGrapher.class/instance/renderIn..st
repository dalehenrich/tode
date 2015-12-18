hooks
renderIn: aView
	datasets do: #computeMinAndMax.
	rightDataSets do:#computeMinAndMax.
	self homogenizeMinAndMax.
	self defineAxesIfNecessary.
	self renderAxis.
	datasets do: [ :aDataset | aDataset renderIn: aView ].
	rightDataSets do: [ :aDataset | aDataset renderIn: aView ]