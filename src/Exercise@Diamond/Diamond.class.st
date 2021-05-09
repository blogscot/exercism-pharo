Class {
	#name : #Diamond,
	#superclass : #Object,
	#classVars : [
		'Alphabet'
	],
	#classInstVars : [
		'Alphabet'
	],
	#category : #'Exercise@Diamond'
}

{ #category : #'class initialization' }
Diamond class >> initialize [
	Alphabet := ($A to: $Z) as: String.
]

{ #category : #'as yet unclassified' }
Diamond >> buildRow: length with: char [
	| row index middle offset |
	index := Alphabet indexOf: char.
	row := ' ' repeat: length.
	middle := length // 2 + 1.
	offset := index - 1.
	row
		at: middle + offset put: char;
		at: middle - offset put: char.
	^ row
]

{ #category : #initialization }
Diamond >> initialize [
   self class initialize.
]

{ #category : #'as yet unclassified' }
Diamond >> rowsLetter: letter [
	| index rows rows2 length |
	rows := OrderedCollection new.
	index := Alphabet indexOf: (letter at: 1).
	length := index * 2 - 1.
	1 to: index do: [ :each | 
		| char |
		char := Alphabet at: each.
		rows add: (self buildRow: length with: char) ].
	rows2 := rows reversed.
	rows2 removeFirst.
	rows addAll: rows2.
	^ rows asArray
]
