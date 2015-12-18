This Shape represent an OpenStreetMap background object which tracks the camera zoom level and translation to build a view of the corresponding part of the OpenStreetMap.

A similar approach could work with Google maps.

Instance Variables
	osmZoomLevel:		<Integer>
	position:		<Point>
	rectangle:	<Rectangle>
	scale:		<Point>
	tiles:		<Dictionary of Point -> Form>
	zoom:		<Point>

osmZoomLevel
	- the zoom level in the OSM range (0 to 18, integer)

position
	- position of the shape

rectangle
	- bounds of the shape

scale
	- the scale of the shape

tiles
	- the cache of tiles, indexed by x, y

zoom
	- zoom of the shape


Principle:
	1.0 in Roassal space -> 1km in OSM. 
	R zoom to OSM zoom level: (base is 1km/pixel) 
		1000 * Rzoom = 156543.034 meters/pixel / (2 ^ zoomlevel)
		zoomlevel = ln( 156.543034 * Rzoom ) / ln 2
		remainderZoom =  156.543034 * Rzoom / (2 ^ zoomlevel))
		lon to Roassal space = [ :l | 40075.016686 * (l / 360) ]
		lat to Roassal space = [ :l | ((Float pi / 4) + (l degreesToRadians / 2)) tan ln * 40075.016686 / (2.0 * Float pi) ]
		Remember : working limit for lat/lon is ±85.05113°

Goal:
	depending on the RTView size and the canvas parameters, get the right tiles from OSM and display them.

Algorithm:
	From the camera, get the zoom level and offset.
	Compute the OSM zoom level (with the camera zoom value).
	Make remainder zoom a transform inside the TROSMShape.
	Take corners of bounding box, get lat / long, get tiles x and y based on previous zoom level.
	Set clipping rectangle to TROSMShape bounds.
	Display each tile.
	cache each tile. When displaying, check if tile exists. Remove tile if not used in display.