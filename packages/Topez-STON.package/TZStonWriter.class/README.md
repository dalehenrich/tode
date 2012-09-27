```Smalltalk
| stream |
TZObjectTable reset.
stream := WriteStream on: String new.
(TZStonWriter on: stream) 
	levelLimit: 5;
	nextPut: {1. 2. true . false. 5. 'a' -> 42}.
STON fromString: stream contents  
```

```
topaz 1> run
{1. 2. true . false. 5. 'a' -> 42}
%
anArray
topaz 1> 
```

```
topaz 1> display oops
topaz 1> run
{1. 2. true . false. 5. 'a' -> 42}
%
[120628225 sz:5 cls: 66817 Array] anArray
topaz 1> 
```

```
topaz 1> level 1
topaz 1> run
{1. 2. true . false. 5. 'a' -> 42}
%
[120626945 sz:5 cls: 66817 Array] a Array
  #1 [10 sz:0 cls: 74241 SmallInteger] 1 == 0x1
  #2 [18 sz:0 cls: 74241 SmallInteger] 2 == 0x2
  #3 [268 sz:0 cls: 68097 Boolean] true
  #4 [12 sz:0 cls: 68097 Boolean] false
  #5 [42 sz:0 cls: 74241 SmallInteger] 5 == 0x5
  #6 [120620289 sz:2 cls: 67073 Association] a Association
topaz 1> 
```

```
topaz 1> omit oops
topaz 1> run
{1. 2. true . false. 5. 'a' -> 42}
%
a Array
  #1 1
  #2 2
  #3 true
  #4 false
  #5 5
  #6 a Association
topaz 1> 
```

```
topaz 1> level 5
topaz 1> display oops
topaz 1> display bytes
topaz 1> run
{1. 2. true . false. 5. 'a' -> 42}
%
[124298753 sz:6 cls: 66817 Array] a Array
  #1 [10 sz:0 cls: 74241 SmallInteger] 1 == 0x1
  #2 [18 sz:0 cls: 74241 SmallInteger] 2 == 0x2
  #3 [268 sz:0 cls: 68097 Boolean] true
  #4 [12 sz:0 cls: 68097 Boolean] false
  #5 [42 sz:0 cls: 74241 SmallInteger] 5 == 0x5
  #6 [124296961 sz:2 cls: 67073 Association] a Association
    key                 [124296449 sz:1 cls: 74753 String] 
      1 'a'                       61
    value               [338 sz:0 cls: 74241 SmallInteger] 42 == 0x2a
topaz 1> 
```