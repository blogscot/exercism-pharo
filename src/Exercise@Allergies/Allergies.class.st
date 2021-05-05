Class {
	#name : #Allergies,
	#superclass : #Object,
	#classVars : [
		'dict'
	],
	#category : #'Exercise@Allergies'
}

{ #category : #accesing }
Allergies >> allergicToItem: item forScore: score [
	| key |
	key := dict keyAtValue: item ifAbsent: 0.
	^ (key & score) > 0
]

{ #category : #accesing }
Allergies >> allergyListForScore: score [
	| range modulus |
	range := (Interval from: 0 to: dict size)
		collect: [ :n | 2 raisedTo: n ].
	modulus := score rem: range max.
	^ (range select: [ :n | (n & modulus) > 0 ])
		collect: [ :n | dict at: n ]
]

{ #category : #initialization }
Allergies >> initialize [
	| allergies key |
	allergies := #('eggs' 'peanuts' 'shellfish' 'strawberries' 'tomatoes' 'chocolate' 'pollen' 'cats').
	dict := Dictionary new.
	allergies
		doWithIndex: [ :each :i | 
			key := 2 raisedTo: i - 1.
			dict add: key -> each ]

	"
* eggs (1)
* peanuts (2)
* shellfish (4)
* strawberries (8)
* tomatoes (16)
* chocolate (32)
* pollen (64)
* cats (128)
"
]
