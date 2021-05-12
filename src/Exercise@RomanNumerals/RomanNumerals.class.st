Class {
	#name : #RomanNumerals,
	#superclass : #Object,
	#instVars : [
		'table'
	],
	#category : #'Exercise@RomanNumerals'
}

{ #category : #initialization }
RomanNumerals >> initialize [
	| roman arabic |
	arabic := #(1000 900 500 400 100 90 50 40 10 9 5 4 1).
	roman := #('M' 'CM' 'D' 'CD' 'C' 'XC' 'L' 'XL' 'X' 'IX' 'V' 'IV' 'I').
	table := arabic with: roman collect: [ :a :r | a->r ]
]

{ #category : #'as yet unclassified' }
RomanNumerals >> romanNumber: number [
	| arabic roman index |
	arabic := number.
	roman := ''.
	index := 1.
	[ arabic > 0 ]
		whileTrue: [ | currentArabic currentRoman entry |
			entry := table at: index.
			currentArabic := entry key.
			currentRoman := entry value.
			arabic >= currentArabic
				ifTrue: [ arabic := arabic - currentArabic.
					roman := roman , currentRoman ]
				ifFalse: [ index := index + 1 ] ].
	^ roman
]
