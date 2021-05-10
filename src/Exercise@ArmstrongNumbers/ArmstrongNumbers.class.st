Class {
	#name : #ArmstrongNumbers,
	#superclass : #Object,
	#category : #'Exercise@ArmstrongNumbers'
}

{ #category : #'as yet unclassified' }
ArmstrongNumbers >> isArmstrongNumber: anInteger [
	| power chars total |
	chars := anInteger asString asArray.
	power := chars size.
	total := chars sum: [ :each | each digitValue raisedTo: power ].
	^ total = anInteger
]
