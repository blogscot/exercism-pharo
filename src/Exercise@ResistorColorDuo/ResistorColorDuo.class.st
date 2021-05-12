Class {
	#name : #ResistorColorDuo,
	#superclass : #Object,
	#instVars : [
		'resistorColors'
	],
	#category : #'Exercise@ResistorColorDuo'
}

{ #category : #initialization }
ResistorColorDuo >> initialize [
	resistorColors := #('black' 'brown' 'red' 'orange' 'yellow' 'green' 'blue' 'violet' 'grey' 'white')
		asOrderedCollection
]

{ #category : #'as yet unclassified' }
ResistorColorDuo >> valueWithColors: colors [
	| value |
	value := colors
		collect: [ :each | ((resistorColors find: each) - 1) asCharacterDigit ]
		as: String.
	^ value asInteger
]
