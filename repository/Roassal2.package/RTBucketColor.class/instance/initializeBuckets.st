as yet unclassified
initializeBuckets
	
	|values min max delta  |
	values := scope collect: [:v | command rtValue: v].
	values sort: [ :a :b | a < b ].
	max := values max.
	min := values min.
	delta := (max - min)/numberOfBuckets.

	((min + delta) to: max by: delta) with: self palette do: [ :i :c |
			buckets add:  (Array with:i with: c)
		 ].
	buckets := buckets sort: [:a :b | a first < b first].