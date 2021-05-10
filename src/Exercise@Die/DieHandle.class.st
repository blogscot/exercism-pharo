Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #'Exercise@Die'
}

{ #category : #'as yet unclassified' }
DieHandle >> + aDieHandle [  
	dice addAll: aDieHandle dice.
	^ self
]

{ #category : #'as yet unclassified' }
DieHandle >> addDie: aClass [
	dice add: aClass
]

{ #category : #accessing }
DieHandle >> dice [
	^ dice
]

{ #category : #'as yet unclassified' }
DieHandle >> diceNumber [
	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [
	dice := Bag new.
]

{ #category : #'as yet unclassified' }
DieHandle >> roll [ 
	^ dice inject: 0 into: [ :sum :each | sum + (each roll) ]
]
