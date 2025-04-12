Object subclass: #Driver
	instanceVariableNames: 'driverID name rating assignedRides'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RideSharing'.

!Driver methodsFor: 'initialization'!

initialize: anID name: aName rating: aRating
	"Initialize a new driver with their ID, name, and rating."
	driverID := anID.
	name := aName.
	rating := aRating.
	assignedRides := OrderedCollection new.

!Driver methodsFor: 'accessing'!

driverID
	"Return the unique identifier of the driver."
	^ driverID

name
	"Return the name of the driver."
	^ name

rating
	"Return the current rating of the driver."
	^ rating

assignedRides
	"Return the collection of rides completed by the driver (encapsulation)."
	^ assignedRides

!Driver methodsFor: 'ride management'!

addRide: aRide
	"Add a completed ride to the driver's list of assigned rides."
	assignedRides add: aRide.

!Driver methodsFor: 'displaying'!

getDriverInfo
	"Return a string containing detailed information about the driver."
	^ 'Driver ID: ', driverID asString, ', Name: ', name, ', Rating: ', rating asString, ', Rides Completed: ', assignedRides size asString