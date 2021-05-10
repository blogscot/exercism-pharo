Extension { #name : #SmallInteger }

{ #category : #'*Exercise@Die' }
SmallInteger >> d10 [
	| handle |
	handle := DieHandle new.
	1 to: self do: [ :each | handle addDie: (Die withFaces: 10) ].
	^ handle
]

{ #category : #'*Exercise@Die' }
SmallInteger >> d20 [
	| handle |
	handle := DieHandle new.
	1 to: self do: [ :each | handle addDie: (Die withFaces: 20) ].
	^ handle
]
