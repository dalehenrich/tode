!

! From ! GEMSTONE: 5.1.5, Thu Apr 27 23:10:40 US/Pacific 2000; IMAGE: GemStone v5.1 kernel classes filein completed at 27/04/2000 23:20:24


! 



! On February 21, 2001, 4:01:40 pm

!

!

! SymbolDictionary 'IndexTests'

!

run

| symList newDict |

symList := System myUserProfile symbolList.

symList do: [ :element |

    (element includesKey: #IndexTests)

        ifTrue: [ ^element ]

].

newDict := SymbolDictionary new.

newDict at: #IndexTests put: newDict.

System myUserProfile insertDictionary: newDict at: 1.

^newDict

%

doit
(Object subclass: 'LMAddress'  instVarNames: #( street city zip)  
    classVars: #()  classInstVars: #()  poolDictionaries: #()  
    inDictionary: IndexTests  constraints: #()  
    instancesInvariant: false  isModifiable: true)
.
%
doit
(Object subclass: 'LMCustomer'  instVarNames: #( customerName customerId address                    orders)  classVars: #( Counter)  classInstVars: #()  poolDictionaries: #()  inDictionary: IndexTests  constraints: #()  instancesInvariant: false  isModifiable: true)
.
%
doit
(Object subclass: 'LMEntry'  instVarNames: #( itemNumber quantity priceEach)  classVars: #()  classInstVars: #()  poolDictionaries: #()  inDictionary: IndexTests  constraints: #()  instancesInvariant: false  isModifiable: true)
.
%
doit
(Object subclass: 'LMOrder'  instVarNames: #( date customer entries                    orderId)  classVars: #( Counter)  classInstVars: #()  poolDictionaries: #()  inDictionary: IndexTests  constraints: #()  instancesInvariant: false  isModifiable: true)
.
%
doit
LMAddress immediateInvariant.
%
doit
LMCustomer immediateInvariant.
%
doit
LMEntry immediateInvariant.
%
doit
LMOrder immediateInvariant.
%

! Remove existing behavior from LMAddress
doit
LMAddress removeAllMethods.
LMAddress class removeAllMethods.
%
! ------------------- Class methods for LMAddress
category: 'instance creation'
classmethod: LMAddress
createSample
	| addr |
	addr := self new.
	addr street: (LMCustomer randomNumberUpTo: 9999) asString, ' ', (LMCustomer generateName: 5), ' Street'.
	addr city: self generateCity.
	addr zip: '9', (LMCustomer randomNumberUpTo: 9999) asString.
	^addr
%
category: 'instance creation'
classmethod: LMAddress
generateCity
	| num |
	num := LMCustomer randomNumberUpTo: 5.
	num = 1 ifTrue: [^'Portland' copy].
	num = 2 ifTrue: [^'Sandy' copy].
	num = 3 ifTrue: [^'Beaverton' copy].
	num = 4 ifTrue: [^'Gresham' copy].
	num = 5 ifTrue: [^'Eugene' copy].
	num = 6 ifTrue: [^'Albany' copy].
	num = 7 ifTrue: [^'Corvallis' copy].
	num = 8 ifTrue: [^'Salem' copy].
	num = 9 ifTrue: [^'Troutdale' copy].
	num = 10 ifTrue: [^'The Dalles' copy].
	^'Chicago'
%
! ------------------- Instance methods for LMAddress
category: 'Accessing'
method: LMAddress
city

   "Return the value of the instance variable 'city'."
   ^city
%
category: 'Accessing'
method: LMAddress
street

   "Return the value of the instance variable 'street'."
   ^street
%
category: 'Accessing'
method: LMAddress
zip

   "Return the value of the instance variable 'zip'."
   ^zip
%
category: 'Updating'
method: LMAddress
city: newValue

   "Modify the value of the instance variable 'city'."
   city := newValue
%
category: 'Updating'
method: LMAddress
street: newValue

   "Modify the value of the instance variable 'street'."
   street := newValue
%
category: 'Updating'
method: LMAddress
zip: newValue

   "Modify the value of the instance variable 'zip'."
   zip := newValue
%

! Remove existing behavior from LMCustomer
doit
LMCustomer removeAllMethods.
LMCustomer class removeAllMethods.
%
! ------------------- Class methods for LMCustomer
category: 'class var'
classmethod: LMCustomer
counter
	Counter isNil 
		ifTrue: [Counter := 0].
	Counter := Counter + 1.
	^Counter
%
category: 'instance creation'
classmethod: LMCustomer
createSample
	| cust |
	cust := self new.
	cust customerName: (self generateName: 7).
	cust customerId: self counter asString.
	cust address: (LMAddress createSample).
	cust orders: IdentityBag new.
	(self randomNumberUpTo: 5) timesRepeat:
		[cust orders add: (LMOrder createSampleFor: cust)].

	^cust
%
category: 'instance creation'
classmethod: LMCustomer
generateName: limit
	"generate a lower case, first letter capitalized, alphabetic random 
      string, less than or equal to <limit> characters"

	| str ws char char2 namestr int |
	namestr := String new.
	str := ((Time millisecondClockValue asString), (Time millisecondClockValue asString)) reverse.
	ws := ReadStream on: str.
	[ws atEnd] whileFalse:
		[char := ws next.
		ws atEnd ifTrue: [char2 := $0] ifFalse: [char2 := ws next].
		int := Integer fromString: (String with: char with: char2).
		int := (int \\ 58) + 65.
		(int > 90 and: [int < 97]) ifTrue: [ int := 97].
		namestr add: (Character withValue: int)].

	namestr := (namestr copyFrom: 1 to: (namestr size min: limit)).
	namestr := namestr asLowercase.
	namestr at: 1 put: (namestr at: 1) asUppercase.

	^namestr
%
category: 'instance creation'
classmethod: LMCustomer
randomNumberUpTo: limit
	"generate a number from 1..limit"

	^(Time millisecondClockValue \\ limit) + 1
%
! ------------------- Instance methods for LMCustomer
category: 'Accessing'
method: LMCustomer
address

   "Return the value of the instance variable 'address'."
   ^address
%
category: 'Accessing'
method: LMCustomer
customerId

   "Return the value of the instance variable 'customerId'."
   ^customerId
%
category: 'Accessing'
method: LMCustomer
customerName

   "Return the value of the instance variable 'customerName'."
   ^customerName
%
category: 'Accessing'
method: LMCustomer
orders

   "Return the value of the instance variable 'orders'."
   ^orders
%
category: 'Updating'
method: LMCustomer
address: newValue

   "Modify the value of the instance variable 'address'."
   address := newValue
%
category: 'Updating'
method: LMCustomer
customerId: newValue

   "Modify the value of the instance variable 'customerId'."
   customerId := newValue
%
category: 'Updating'
method: LMCustomer
customerName: newValue

   "Modify the value of the instance variable 'customerName'."
   customerName := newValue
%
category: 'Updating'
method: LMCustomer
orders: newValue

   "Modify the value of the instance variable 'orders'."
   orders := newValue
%

! Remove existing behavior from LMEntry
doit
LMEntry removeAllMethods.
LMEntry class removeAllMethods.
%
! ------------------- Class methods for LMEntry
category: 'instance creation'
classmethod: LMEntry
createSample
	| entry num |
	entry := self new.
	entry itemNumber: (LMCustomer randomNumberUpTo: 500) asString.
	entry quantity: (LMCustomer randomNumberUpTo: 10).
	entry priceEach: ((LMCustomer randomNumberUpTo: 100) asFloat + ((LMCustomer randomNumberUpTo: 99) asFloat / 100)).
	^entry
%
! ------------------- Instance methods for LMEntry
category: 'Accessing'
method: LMEntry
itemNumber

   "Return the value of the instance variable 'itemNumber'."
   ^itemNumber
%
category: 'Accessing'
method: LMEntry
itemNumber: newValue

   "Modify the value of the instance variable 'itemNumber'."
   itemNumber := newValue
%
category: 'Accessing'
method: LMEntry
priceEach

   "Return the value of the instance variable 'priceEach'."
   ^priceEach
%
category: 'Accessing'
method: LMEntry
priceEach: newValue

   "Modify the value of the instance variable 'priceEach'."
   priceEach := newValue
%
category: 'Accessing'
method: LMEntry
quantity

   "Return the value of the instance variable 'quantity'."
   ^quantity
%
category: 'Accessing'
method: LMEntry
quantity: newValue

   "Modify the value of the instance variable 'quantity'."
   quantity := newValue
%
category: 'Comparison'
method: LMEntry
< anotherEntry
	^self itemNumber < anotherEntry itemNumber
%
category: 'Comparison'
method: LMEntry
<= anotherEntry
	^self itemNumber <= anotherEntry itemNumber
%
category: 'Comparison'
method: LMEntry
= anotherEntry
	anotherEntry class = self class ifFalse: [^false].
	self itemNumber = anotherEntry itemNumber
		ifFalse: [^false].
	self quantity = anotherEntry quantity
		ifFalse: [^false].
	self priceEach = anotherEntry priceEach
		ifFalse: [^false].
	^true
%
category: 'Comparison'
method: LMEntry
> anotherEntry
	^self itemNumber > anotherEntry itemNumber
%
category: 'Comparison'
method: LMEntry
>= anotherEntry
	^self itemNumber >= anotherEntry itemNumber
%
category: 'Comparison'
method: LMEntry
hash
	^(self itemNumber, self quantity asString, self priceEach asString) hash
%
category: 'Public'
method: LMEntry
totalValue
	^self quantity * self priceEach
%
category: 'Public'
method: LMEntry
value
	^self quantity * self priceEach
%

! Remove existing behavior from LMOrder
doit
LMOrder removeAllMethods.
LMOrder class removeAllMethods.
%
! ------------------- Class methods for LMOrder
category: 'class var'
classmethod: LMOrder
counter
	Counter isNil 
		ifTrue: [Counter := 0].
	Counter := Counter + 1.
	^Counter
%
category: 'instance creation'
classmethod: LMOrder
createSampleFor: customer
	| order |
	order := self new.
	order orderId: self counter asString.
	order date: self generateDate.
	order customer: customer.
	order entries: Set new.
	(LMCustomer randomNumberUpTo: 10) timesRepeat:
		[order entries add: LMEntry createSample].
	^order
%
category: 'instance creation'
classmethod: LMOrder
generateDate
	"generate a date up to 6 years in the past or future; more likely in the past"

	| int1 int2 int3 |
	int1 := Time millisecondClockValue \\ 5.
	int2 := Time millisecondClockValue \\ 365.
	int3 :=  Time millisecondClockValue \\ 2.

	^int3 > 0
		ifTrue: [Date today subtractDays: int2 + (int1 * 365)]
		ifFalse: [Date today addDays: (int1 * 365) + int2].
%
! ------------------- Instance methods for LMOrder
category: 'Accessing'
method: LMOrder
customer

   "Return the value of the instance variable 'customer'."
   ^customer
%
category: 'Accessing'
method: LMOrder
date

   "Return the value of the instance variable 'date'."
   ^date
%
category: 'Accessing'
method: LMOrder
entries

   "Return the value of the instance variable 'entries'."
   ^entries
%
category: 'Accessing'
method: LMOrder
orderId

   "Return the value of the instance variable 'orderId'."
   ^orderId
%
category: 'Public'
method: LMOrder
totalValue
	| sum |
	sum := 0.
	self entries do: [:each | sum := sum + each totalValue].
	^sum
%
category: 'Updating'
method: LMOrder
customer: newValue

   "Modify the value of the instance variable 'customer'."
   customer := newValue
%
category: 'Updating'
method: LMOrder
date: newValue

   "Modify the value of the instance variable 'date'."
   date := newValue
%
category: 'Updating'
method: LMOrder
entries: newValue

   "Modify the value of the instance variable 'entries'."
   entries := newValue
%
category: 'Updating'
method: LMOrder
orderId: newValue

   "Modify the value of the instance variable 'orderId'."
   orderId := newValue
%
