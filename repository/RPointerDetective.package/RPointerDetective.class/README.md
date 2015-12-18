based on PointerDetective package from BenComan, this is a PointerDetective using Roassal. Allowing you to detectect references to an object.
try out with example: 

ob := 'OBJ'.
ar := { ob. 12 }.
e := (RTBox new) elementOn: ar.
v := RTView new.
v add: e.

RPointerDetective on: ob

Compatibility with Gemstone Object using RServerPointerDetective:


RPointerDetective onServerFindAllReferencePathsToObject: 154679809 shell: shell
RPointerDetective onServer: 154679809 shell: shell
