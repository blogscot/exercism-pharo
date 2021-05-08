Class {
	#name : #Darts,
	#superclass : #Object,
	#category : #'Exercise@Darts'
}

{ #category : #evaluation }
Darts >> scoreX: x y: y [
	| distance |
	distance := (x @ y) r.
	distance > 10
		ifTrue: [ ^ 0 ].
	distance > 5
		ifTrue: [ ^ 1 ].
	distance > 1
		ifTrue: [ ^ 5 ].
	^ 10
]
