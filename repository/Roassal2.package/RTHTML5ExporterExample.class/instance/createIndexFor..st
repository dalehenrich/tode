private
createIndexFor: aCollection
	| index stream text |
	index := TRPlatform current workingDirectory / 'index.html'.
	index exists ifTrue: [ index delete ].
	stream := index writeStream.
	[ stream nextPutAll: 
'<!DOCTYPE html>
<html>
	<head>
		<title>Roassal Examples</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript" src="http://objectprofile.com/bjqs.js"></script>
		<link type="text/css" rel="Stylesheet" href="https://raw.githubusercontent.com/jcobb/basic-jquery-slider/master/bjqs.css" />
		<link type="text/css" rel="Stylesheet" href="http://basic-slider.com/css/main.css" />
		
		<style type="text/css">
			body{
				margin: 0 auto
			}
			h1{
				text-align: center
			}
			iframe{
				border: 1px solid lightblue
			}
			img{
				position: absolute;
				top: 50%;
				left: 50%;
				margin-left: -100px;
				width: 200px;
				margin-top: -100px;
				display: none
			}
		</style>
	</head>
	<body><center>
		<div id="my-slideshow">
			<ul class="bjqs">'.
	
	(aCollection sorted: [ :a :b| a selector <= b selector ]) do: [ :met |
		text := met methodClass name,'-', met selector asString.
		stream nextPutAll: '
	<li>
	<h1>',text,'</h1>'.
		stream nextPutAll: '
	<iframe width="800" height="800" ref="',met methodClass name, '-',met selector,'.html"></iframe>
	</li>'.
		].
	stream nextPutAll: 
'			</ul>
		</div>
		<img src="http://bradsknutson.com/wp-content/uploads/2013/04/page-loader.gif" style="display: none;">
	<script type="text/javascript">
		$(document).ready( function(){
			$("#my-slideshow").bjqs({
				height: 900,
				width: 1000,
				responsive: true,
				visiblemarkers: 15,
				animspeed: 8000
			});
		});
	</script>
	</center></body>
</html>'. ] ensure: [ stream close ].
	^ index.

