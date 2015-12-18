accessing
rtValue: anEntity

	| value |
	value := self command rtValue: anEntity.
	"detect range for the value, retrieve and call corresponding normalizers"
	^ (self detectNormalizerFor: value) rtValue: value