resources
downloadBuildingsAndStreamKampungMelayu
	"Retrieving some data from OpenStreetMap"

	^ TRPlatform current httpClientRequestClass new
		url: 'http://overpass-api.de/api/interpreter';
		queryAt: 'data'
			put:
				'[out:json]
[timeout:25]
;
(
   way["waterway"="riverbank"](-6.22170,106.85923,-6.21970,106.86323);
   way["building"="yes"](-6.22170,106.85923,-6.21970,106.86323);
);
out body;
 >;
out skel qt;';
		contentReader: [ :entity | TRPlatform current jsonReaderClass fromString: entity contents ];
		get