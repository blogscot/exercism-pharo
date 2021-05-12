Class {
	#name : #Proverb,
	#superclass : #Object,
	#category : #'Exercise@Proverb'
}

{ #category : #'as yet unclassified' }
Proverb >> reciteStrings: list [
	^ (1 to: list size)
		collect: [ :n | 
			n = list size
				ifTrue: [ 'And all for the want of a ' , (list at: 1) asString , '.' ]
				ifFalse: [ 'For want of a ' , (list at: n) asString , ' the '
						, (list at: n + 1) asString , ' was lost.' ] ]
]
