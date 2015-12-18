adding
addFunctions: aStream
	| attr  |
	attr := self targetColorAttribute.
	aStream
		nextPutAll: '			var color;
			function hightlight(evt) {
				if (evt.target.id == "BackDrop")
					return;
				if (!evt.target.classList.contains("hightlight"))
					return;
				var affected = evt.target;
				if (color == affected.style["',attr,'"] || color == null) {
					color = affected.style["',attr,'"];
					affected.style["',attr,'"] = "',self color asHTMLColor,'";
				}
			};
			
			function unHightlight(evt) {
				if (evt.target.id == "BackDrop")
					return;
				if (!evt.target.classList.contains("hightlight"))
					return;
				var affected = evt.target;
				affected.style["',attr,'"] = color;
				color = null;
			}';
		nextPutAll: String cr.