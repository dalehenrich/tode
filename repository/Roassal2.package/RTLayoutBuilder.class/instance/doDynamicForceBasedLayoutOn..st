building
doDynamicForceBasedLayoutOn: elements
	| v |
	v := elements anyOne view.
	v addAnimation: (RTSpringLayoutStepping new view: v)