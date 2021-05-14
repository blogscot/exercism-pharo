Class {
	#name : #TwelveDays,
	#superclass : #Object,
	#instVars : [
		'days',
		'allGifts'
	],
	#category : #'Exercise@TwelveDays'
}

{ #category : #initialization }
TwelveDays >> initialize [
	allGifts := #('a Partridge in a Pear Tree' 'two Turtle Doves' 'three French Hens' 'four Calling Birds' 'five Gold Rings' 'six Geese-a-Laying' 'seven Swans-a-Swimming' 'eight Maids-a-Milking' 'nine Ladies Dancing' 'ten Lords-a-Leaping' 'eleven Pipers Piping' 'twelve Drummers Drumming').
	days := #('first' 'second' 'third' 'fourth' 'fifth' 'sixth' 'seventh' 'eighth' 'ninth' 'tenth' 'eleventh' 'twelfth')
]

{ #category : #'as yet unclassified' }
TwelveDays >> reciteStartVerse: startVerse endVerse: endVerse [
	^ (startVerse to: endVerse)
		collect: [ :verse | self reciteVerse: verse ]
]

{ #category : #'as yet unclassified' }
TwelveDays >> reciteVerse: day [
	| intro firstGift gifts |
	intro := 'On the ' , (days at: day)
		, ' day of Christmas my true love gave to me: '.
	gifts := (day to: 2 by: -1) collect: [ :each | allGifts at: each ].
	firstGift := allGifts at: 1.
	gifts := gifts isEmpty
		ifTrue: [ firstGift ]
		ifFalse: [ (', ' join: gifts) , ', and ' , firstGift ].
	^ intro , gifts , '.'
]
