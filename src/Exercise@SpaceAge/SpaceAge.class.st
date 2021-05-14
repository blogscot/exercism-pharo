Class {
	#name : #SpaceAge,
	#superclass : #Object,
	#instVars : [
		'orbitalPeriods',
		'oneYearInSeconds'
	],
	#category : #'Exercise@SpaceAge'
}

{ #category : #'as yet unclassified' }
SpaceAge >> ageOnPlanet: planet at: seconds [
	| age |
	age := seconds / oneYearInSeconds.
	^ age / orbitalPeriods at: planet
]

{ #category : #initialization }
SpaceAge >> initialize [
	| planets periods |
	"
   - Earth: orbital period 365.25 Earth days, or 31557600 seconds
   - Mercury: orbital period 0.2408467 Earth years
   - Venus: orbital period 0.61519726 Earth years
   - Mars: orbital period 1.8808158 Earth years
   - Jupiter: orbital period 11.862615 Earth years
   - Saturn: orbital period 29.447498 Earth years
   - Uranus: orbital period 84.016846 Earth years
   - Neptune: orbital period 164.79132 Earth years
"
	oneYearInSeconds := 31557600.
	planets := #('Earth' 'Mercury' 'Venus' 'Mars' 'Jupiter' 'Saturn' 'Uranus' 'Neptune').
	periods := #(1 0.2408467 0.61519726 1.8808158 11.862615 29.447498 84.016846 164.79132).
	orbitalPeriods := (planets
		with: periods
		collect: [ :planet :period | planet -> period ]) as: Dictionary
]
