Object subclass: #Rider
	instanceVariableNames: 'riderID name requestedRides'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RideSharing'.

!Rider methodsFor: 'initialization'!

initialize: anID name: aName
	"Initialize a new rider with their ID and name."
	riderID := anID.
	name := aName.
	requestedRides := OrderedCollection new.

!Rider methodsFor: 'accessing'!

riderID
	"Return the unique identifier of the rider."
	^ riderID

name
	"Return the name of the rider."
	^ name

requestedRides
	"Return the collection of rides requested by the rider."
	^ requestedRides

!Rider methodsFor: 'ride management'!

requestRide: aRide
	"Add a ride to the rider's list of requested rides."
	requestedRides add: aRide.

!Rider methodsFor: 'displaying'!

viewRides
	"Return a string displaying the rider's requested rides."
	^ 'Rider: ', name, ', Requested Rides: ', requestedRides size asString, '. Rides: ', (requestedRides collect: [ :ride | ride rideID ]) asString