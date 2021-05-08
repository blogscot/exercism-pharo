Class {
	#name : #CollatzConjecture,
	#superclass : #Object,
	#category : #'Exercise@CollatzConjecture'
}

{ #category : #calculations }
CollatzConjecture >> stepsFrom: num [
	num strictlyPositive
		or: [ ^ self error: 'Only positive numbers are allowed' ].
	^ self stepsFrom: num acc: 0
]

{ #category : #utilities }
CollatzConjecture >> stepsFrom: num acc: step [
	num = 1
		ifTrue: [ ^ step ].
	num even
		ifTrue: [ ^ self stepsFrom: num / 2 acc: step + 1 ]
		ifFalse: [ ^ self stepsFrom: num * 3 + 1 acc: step + 1 ]
]
