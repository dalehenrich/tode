basic tests
setUp
	arc1:=TRArcShape new.
	arc2:=TRArcShape new.
	arc3:=TRArcShape new.
	arc4:=TRArcShape new.
	arc5:=TRArcShape new.
	arcQ1:=TRArcShape new.
	arcQ2:=TRArcShape new.
	arcQ3:=TRArcShape new.
	arcQ4:=TRArcShape new.
	arc1 alphaAngle: 0 betaAngle: 360 innerRadius:  0 externalRadius:  100.
	arc2 alphaAngle: 30 betaAngle: 60 innerRadius:  50 externalRadius:  50.
	arc3 alphaAngle: 0 betaAngle:  90 innerRadius:  2 sqrt externalRadius: 2 sqrt.
	arc4 alphaAngle:180 betaAngle: 270 innerRadius: 50 externalRadius:150.
	arc5 alphaAngle:0 betaAngle: 270 innerRadius: 50 externalRadius:150.
	arcQ1 alphaAngle: 0 betaAngle: 90 innerRadius:  0 externalRadius:  100.
	arcQ2 alphaAngle: 90 betaAngle: 180 innerRadius:  0 externalRadius:  100.
	arcQ3 alphaAngle: 180 betaAngle: 270 innerRadius:  0 externalRadius:  100.
	arcQ4 alphaAngle: 270 betaAngle: 360 innerRadius:  0 externalRadius:  100.
	pR:=100 @ 0.
	pB:=0 @ 100.
	pL:=-100 @ 0.
	pT:=0 @ -100.
	pQ1:=50 @ 50.
	pQ2:=-50 @ 50.
	pQ3:=-50 @ -50.
	pQ4:=50 @ -50.
	p1:= 0 @ 0.
	p2:=100 @ 100.
	p3:=50 @ 50.
	p4:= 0 @ 150.
	p5:=1 @ -1.
	p6:=0 @ -100.
	p7:=-100 @ 0.
	p8:=-100 @ 100.
	p1n:=p1 negated.
	p2n:=p2 negated.
	p3n:=p3 negated.
	p4n:= p4 negated.
	p5n:=p5 negated.
	p6n:=p6 negated.
	p7n:=p7 negated.
	p8n:=p8 negated.