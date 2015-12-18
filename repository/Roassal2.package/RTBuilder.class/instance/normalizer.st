accessing
normalizer
	"
	:: Void->RTMetricNormalizer
	"
	metricNormalizer ifNil: [ 
		metricNormalizer := RTMetricNormalizer new. 
		metricNormalizer view: self view.
		metricNormalizer elements: self view elements ].
	^ metricNormalizer