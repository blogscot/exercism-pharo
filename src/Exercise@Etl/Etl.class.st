Class {
	#name : #Etl,
	#superclass : #Object,
	#category : #'Exercise@Etl'
}

{ #category : #transforming }
Etl >> transformData: dictionary [
	| newDict |
	newDict := Dictionary new.
	dictionary
		keysAndValuesDo: [ :key :values | 
			values
				collect: [ :each | newDict add: each asLowercase -> key asInteger ] ].
	^ newDict
]
