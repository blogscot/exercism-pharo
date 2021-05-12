Class {
	#name : #SecretHandshake,
	#superclass : #Object,
	#instVars : [
		'secrets'
	],
	#category : #'Exercise@SecretHandshake'
}

{ #category : #'as yet unclassified' }
SecretHandshake >> commandsNumber: number [
	| results |
	results := (secrets select: [ :each | each key & number > 0 ])
		collect: [ :each | each value ].
	^ number & 16 > 0
		ifTrue: [ results reversed ]
		ifFalse: [ results ]
]

{ #category : #initialization }
SecretHandshake >> initialize [
	| signs |
	signs := #('wink' 'double blink' 'close your eyes' 'jump').
	secrets := signs collectWithIndex: [ :each :i | (2 raisedTo: i - 1)->each ].
]
