Class {
	#name : #Hamming,
	#superclass : #Object,
	#category : #'Exercise@Hamming'
}

{ #category : #'as yet unclassified' }
Hamming >> distanceStrand1: strand1 strand2: strand2 [
	| distance |
	strand1 isEmpty & strand2 notEmpty
		ifTrue: [ self error: 'left strand must not be empty' ].
	strand2 isEmpty & strand1 notEmpty
		ifTrue: [ self error: 'right strand must not be empty' ].
	strand1 size = strand2 size
		ifFalse: [ self error: 'left and right strands must be of equal length' ].
	distance := 0.
	strand1 asArray
		with: strand2 asArray
		do: [ :a :b | 
			a = b
				ifFalse: [ distance := distance + 1 ] ].
	^ distance
]
