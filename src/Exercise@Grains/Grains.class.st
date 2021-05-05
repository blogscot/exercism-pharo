Class {
	#name : #Grains,
	#superclass : #Object,
	#category : #'Exercise@Grains'
}

{ #category : #accessing }
Grains >> atSquare: pos [
	pos > 0 & (pos <= 64)
		ifFalse: [ ^ self error: 'square must be between 1 and 64' ].
	^ 2 raisedTo: pos - 1
]

{ #category : #accessing }
Grains >> total [
	^ (2 raisedTo: 64) - 1
]
