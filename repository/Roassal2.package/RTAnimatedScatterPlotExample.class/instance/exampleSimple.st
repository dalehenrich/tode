sources
exampleSimple

| b t1 t2 t3 |
t1 := RTTabTable new input: '
	m1	m2	m3
A	1	2	1
B	2	5	4
C	1	7	4	'.
t1 removeFirstRow.

t2 := RTTabTable new input: '
	m1	m2	m3
A	1	4	8
B	2	6	4
C	1	6	2	'.
t2 removeFirstRow.

t3 := RTTabTable new input: '
	m1	m2	m3
A	2	5	5
B	2	5	4
C	2	7	8	'.
t3 removeFirstRow.

b := RTAnimatedScatterPlot new.
b addTable: t1.
b addTable: t2.
b addTable: t3.
b columns: #('m1' 'm2' 'm3').
b x: #second.
b y: #third.
b size: #fourth.
b build.
^ b view