Class {
	#name : #Binary,
	#superclass : #Object,
	#category : #'Exercise@Binary'
}

{ #category : #converting }
Binary >> decimalFromBinary: aString [
	(self isBinary: aString)
		ifFalse: [ ^ nil ].
	^ (aString asArray reverse
		withIndexCollect: [ :char :i | 
			char = $1
				ifTrue: [ 2 raisedTo: i - 1 ]
				ifFalse: [ 0 ] ]) sum
]

{ #category : #testing }
Binary >> isBinary: aString [
	"is string a valid binary number"

	^ aString allSatisfy: [ :each | '01' includes: each ]
]
