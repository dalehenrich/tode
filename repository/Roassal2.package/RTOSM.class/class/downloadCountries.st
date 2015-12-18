resources
downloadCountries
	"Retrieving some data from FreeBase."
	
	"self downloadCountries"

	^ TRPlatform current httpClientRequestClass new
		url: 'https://www.googleapis.com/freebase/v1/mqlread';
		queryAt: 'query'
			put:
				('[{
  "limit":300,
  "type": "/location/country",
  "name": null,
  "/location/location/geolocation": [{
    "longitude": null,
    "latitude": null
  }],
  "/location/statistical_region/population": [{
    "limit": 1,
    "number": null,
    "year": null,
    "year<": "2014",
   "year>" : "2000",
    "sort": "-year"
  }]
}]' copyWithoutAll: ' 	
');
		contentReader: [ :entity | TRPlatform current jsonReaderClass fromString: entity contents ];
		get