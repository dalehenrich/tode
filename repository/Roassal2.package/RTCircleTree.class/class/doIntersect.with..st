public
doIntersect: c0 with: c1
	^ (c1 center - c0 center) magnitude < (c0 r + c1 r - self epsilon)