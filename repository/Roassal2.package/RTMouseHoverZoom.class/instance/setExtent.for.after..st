private
setExtent: newExtent for: anElement after: aBlock
	resizeStrategy cull: anElement cull: newExtent cull: aBlock