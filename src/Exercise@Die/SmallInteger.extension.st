Extension { #name : #SmallInteger }

{ #category : #'*Exercise@Die' }
SmallInteger >> d10 [
	^ self d: 10
]

{ #category : #'*Exercise@Die' }
SmallInteger >> d20 [
	^ self d: 20
]

{ #category : #'*Exercise@Die' }
SmallInteger >> d: sides [
	| handle |
	handle := DieHandle new.
	self timesRepeat: [ handle addDie: (Die withFaces: sides) ].
	^ handle
]
