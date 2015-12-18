computing
computeRectangle
	|aA bA iR eR p1 p2 p3 p4 pR pQ1 pB pQ2 pL pQ3 pT pQ4 pCollection|
	pCollection:= OrderedCollection new.
	aA:= alphaAngle value degreesToRadians.
	bA:= betaAngle value degreesToRadians.
	iR:= innerRadius value.
	eR:= externalRadius value.
	p1:= (iR*aA cos)@((iR*aA sin) negated).
	p2:= (iR*bA cos)@((iR*bA sin) negated).
	p3:= (eR*aA cos)@((eR*aA sin) negated).
	p4:=(eR*bA cos)@((eR*bA sin) negated).
	pR:=(eR*0 cos) @ ((eR*0 sin) negated).
	pQ1:=(eR*(Float pi /4) cos)@((eR*(Float pi /4) sin) negated).
	pB:=(eR*(Float pi /2) cos)@((eR*(Float pi /2) sin) negated).
	pQ2:=(eR*(Float pi * (3/4)) cos)@((eR*(Float pi * (3/4)) sin) negated).
	pL:=(eR*Float pi cos)@((eR*Float pi sin) negated).
	pQ3:=(eR*(Float pi * (5/4)) cos)@((eR*(Float pi * (5/4)) sin) negated).
	pT:=(eR*(Float pi * (3/2)) cos)@((eR*(Float pi * (3/2)) sin) negated).
	pQ4:=(eR*(Float pi * (7/4)) cos)@((eR*(Float pi * (7/4)) sin) negated).
	pCollection add:p1; add: p2; add: p3; add: p4.
	(self includesPoint: pQ1)ifTrue:[pCollection add: pQ1].
	(self includesPoint: pQ2)ifTrue:[pCollection add: pQ2].
	(self includesPoint: pQ3)ifTrue:[pCollection add: pQ3].
	(self includesPoint: pQ4)ifTrue:[pCollection add: pQ4].
	(self includesPoint: pL)ifTrue:[pCollection add: pL].
	(self includesPoint: pR)ifTrue:[pCollection add: pR].
	(self includesPoint: pB)ifTrue:[pCollection add: pB].
	(self includesPoint: pT)ifTrue:[pCollection add: pT].
	
	bottomRight:=(pCollection max x @ pCollection max y) + self position.
	topLeft := (pCollection min x @ pCollection min y) + self position.
	