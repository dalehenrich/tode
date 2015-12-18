private
findBestGapIn: gaps children: children index: i 
	cbounding: cbounding bounds: bounds circles: circles
	 distance: distance closest: closest gap: gap ncircles: ncircles
	| gapCircle cdistance |
	
	gaps do: [ :cgap | 
		gapCircle := cgap makeGapCircle: (self weight2rad: (self weightOf: (children at: i) )).
		cdistance := RTCircleTree distanceOf: cbounding and: gapCircle.
		cdistance < distance ifTrue: [ 
			cgap circles third isNotNil ifTrue: [ 
				(RTCircleTree doIntersect: cgap circles third with: gapCircle )
				ifTrue: [ cdistance := Float fmax. ] ]
			ifFalse: [ 
				[ :br | 
					((bounds findStart: gapCircle) to: ncircles) do: [ :ccircle |
						(RTCircleTree doIntersect: (circles at: ccircle) with: gapCircle)
						ifTrue: [ cdistance := Float fmax. br value ] ]
				] valueWithExit.  ] ].
		cdistance < distance ifTrue: [ 
			^ Array with: cdistance with: gapCircle with: cgap.  ].
	].
	^ Array with: distance with: closest with: gap