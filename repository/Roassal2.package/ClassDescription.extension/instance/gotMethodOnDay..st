*roassal2
gotMethodOnDay: dayAsNumber
	"Return true if a method has been defined on dayAsNumber.
	Always returns true for dayAsNumber = 0"
	| age |
	age := self ageInDaysRounded.
	^ self methods anySatisfy: [ :cm | (age - cm ageInDaysRounded) = dayAsNumber ]
