resources
downloadCityCoordinatesFor: aCityName
	"Retrieving some data from FreeBase. We do only capitals for the time being."

	"self downloadCityCoordinatesFor: 'Dili'"

	^ (((TRPlatform current httpClientRequestClass new
		url: 'https://www.googleapis.com/freebase/v1/mqlread';
		queryAt: 'query'
			put:
				('
[{
	"limit" : 1,
	"type" : "/location/country",
	"/location/country/capital": [{
		"name" : "' , aCityName
						,
							'",
		"/location/location/geolocation" : [{
			"longitude" : null,
			"latitude" : null
		}]
	}]
}]'
						copyWithoutAll:
							' 	
');
		contentReader: [ :entity | TRPlatform current jsonReaderClass fromString: entity contents ];
		get) at: 'result') first at: '/location/country/capital') first
		in: [ :cap | 
			^ ((cap at: '/location/location/geolocation') first at: 'latitude')
				@ ((cap at: '/location/location/geolocation') first at: 'longitude') ]