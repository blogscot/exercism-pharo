Class {
	#name : #FlattenArray,
	#superclass : #Object,
	#category : #'Exercise@FlattenArray'
}

{ #category : #accessing }
FlattenArray >> flattenArray: aCollection [
	| newCollection |
	newCollection := OrderedCollection new.
	aCollection
		do: [ :each | 
			each isCollection
				ifTrue: [ newCollection addAll: (self flattenArray: each) ]
				ifFalse: [ each ifNotNil: [ newCollection add: each ] ] ].
	^ newCollection asArray
]
