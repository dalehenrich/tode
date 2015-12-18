public-layout
group: aName
	"Compute the group of added objects"
	| group |
	group := self newElementsAsGroup.
	groups add: group.
	mapping at: aName put: group.