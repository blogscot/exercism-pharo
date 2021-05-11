Class {
	#name : #IsbnVerifier,
	#superclass : #Object,
	#category : #'Exercise@IsbnVerifier'
}

{ #category : #'as yet unclassified' }
IsbnVerifier >> isValidIsbn: text [
	| numbersOrX result |
	numbersOrX := text select: [ :each | each isDigit or: each = $X ].
	"X is either absent or last"
	(numbersOrX indexOf: $X) % 10 = 0 or: [ ^ false ].
	numbersOrX size = 10 or: [ ^ false ].
	result := numbersOrX asArray
		with: (10 to: 1 by: -1)
		collect: [ :each :n | 
			each = $X
				ifTrue: [ 10 * n ]
				ifFalse: [ each asString asInteger * n ] ].
	^ (result sum % 11) isZero
]
