Class {
	#name : #Raindrops,
	#superclass : #Object,
	#category : #'Exercise@Raindrops'
}

{ #category : #'as yet unclassified' }
Raindrops >> convertNumber: number [
	| result |
	result := ''.
	(number % 3) isZero
		ifTrue: [ result := result , 'Pling' ].
	(number % 5) isZero
		ifTrue: [ result := result , 'Plang' ].
	(number % 7) isZero
		ifTrue: [ result := result , 'Plong' ].

	^ result isEmpty
		ifTrue: [ number asString ]
		ifFalse: [ result ]
]
