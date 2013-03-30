private
semaphore
	^StashAccessSema ifNil:[StashAccessSema := Semaphore forMutualExclusion]