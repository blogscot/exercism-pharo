Class {
	#name : #Clock,
	#superclass : #Object,
	#instVars : [
		'hours',
		'minutes'
	],
	#category : #'Exercise@Clock'
}

{ #category : #converting }
Clock class >> hour: hours minute: minutes [
	^ self new initialize: hours minute: minutes 
]

{ #category : #arithmetic }
Clock >> + mins [
	"advance the time a bit"

	^ self class hour: hours minute: minutes + mins
]

{ #category : #arithmetic }
Clock >> - mins [
	"jump back to better times"
	
^ self class hour: hours minute: minutes - mins
]

{ #category : #comparing }
Clock >> = anObject [
	"tests if clocks are equal"

	"Are you a clock?"
	self class = anObject class
		ifFalse: [ ^ false ].
	"Are you me?"
	self == anObject
		ifTrue: [ ^ true ].
	"Do we have the same time?"
	^ minutes = anObject minutes and: hours = anObject hours
]

{ #category : #comparing }
Clock >> hash [
	^ hours hash bitXor: minutes hash
]

{ #category : #accessing }
Clock >> hours [
	^ hours
]

{ #category : #initialization }
Clock >> initialize: anInteger minute: anInteger2 [
	minutes := anInteger2 \\ 60.
	hours := (anInteger2 // 60 + anInteger) \\ 24.
	^ self
]

{ #category : #accessing }
Clock >> minutes [
	^ minutes
]

{ #category : #printing }
Clock >> printOn: aStream [
	aStream
		nextPutAll:
			('{1}:{2}'
				format:
					{hours asTwoCharacterString.
					minutes asTwoCharacterString})
]
