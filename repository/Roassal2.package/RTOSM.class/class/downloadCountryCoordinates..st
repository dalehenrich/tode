resources
downloadCountryCoordinates: aCountryName
	"Retrieving some data from FreeBase."

	"self downloadCountryCoordinates: 'Brunei'"

	| result |
	result := TRPlatform current httpClientRequestClass new
		url: 'https://www.googleapis.com/freebase/v1/mqlread';
		queryAt: 'query'
			put:
				('[{
  "limit":1,
  "type": "/location/country",
  "name": "' , aCountryName
						,
							'",
  "/location/location/geolocation": [{
    "longitude": null,
    "latitude": null
  }],
  "/location/statistical_region/population": [{
    "limit": 1,
    "number": null,
    "year": null,
    "year<": "2014",
    "sort": "-year"
  }]
}]'
						copyWithoutAll:
							' 	
');
		contentReader: [ :entity | TRPlatform current jsonReaderClass fromString: entity contents ];
		get.
	^ ((result at: 'result') first at: '/location/location/geolocation') first
		in: [ :c | (c at: 'latitude') @ (c at: 'longitude') ]