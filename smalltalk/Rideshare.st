(Object subclass: Ride) . [
	| rideID pickupLocation dropoffLocation distance fareAmount |

	<category: 'class methods'>
	Ride class >> new: anID from: pickup to: dropoff forDistance: aDistance [
		^ self new initialize: anID from: pickup to: dropoff forDistance: aDistance
	]

	<category: 'initialization'>
	initialize: anID from: pickup to: dropoff forDistance: aDistance [
		rideID := anID.
		pickupLocation := pickup.
		dropoffLocation := dropoff.
		distance := aDistance.
		fareAmount := self calculateFare
	]

	<category: 'accessing'>
	distance [ ^ distance ]
	dropoffLocation [ ^ dropoffLocation ]
	fare [ ^ fareAmount ]
	pickupLocation [ ^ pickupLocation ]
	rideID [ ^ rideID ]

	<category: 'fare calculation'>
	calculateFare [
		"Base fare calculation: $2.00 + $0.50 per mile"
		^ 2.00 + (distance * 0.50)
	]

	<category: 'displaying'>
	rideDetails [
		^ 'Ride ID: ' , rideID printString ,
		  ', Pickup: ' , pickupLocation ,
		  ', Dropoff: ' , dropoffLocation ,
		  ', Distance: ' , distance printString , ' miles' ,
		  ', Fare: $' , fareAmount printString
	]
]

Ride subclass: StandardRide. [
	<category: 'fare calculation'>
	calculateFare [
		"Standard fare: $1.50 + $0.40 per mile"
		^ 1.50 + (distance * 0.40)
	]
]

Ride subclass: PremiumRide. [
	<category: 'fare calculation'>
	calculateFare [
		"Premium fare: $3.00 + $0.75 per mile"
		^ 3.00 + (distance * 0.75)
	]
]

Object subclass: Driver. [
	| driverID name rating assignedRides |

	<category: 'class methods'>
	Driver class >> new: anID name: aName rating: aRating [
		^ self new initialize: anID name: aName rating: aRating
	]

	<category: 'initialization'>
	initialize: anID name: aName rating: aRating [
		driverID := anID.
		name := aName.
		rating := aRating.
		assignedRides := OrderedCollection new
	]

	<category: 'accessing'>
	driverID [ ^ driverID ]
	getDriverInfo [
		^ 'Driver ID: ' , driverID printString ,
		  ', Name: ' , name ,
		  ', Rating: ' , rating printString ,
		  ', Rides Completed: ' , assignedRides size printString
	]
	name [ ^ name ]
	rating [ ^ rating ]

	<category: 'ride management'>
	addRide: aRide [
		assignedRides add: aRide
	]
	assignedRides [
		"Private access to assignedRides"
		^ assignedRides
	]
]

Object subclass: Rider. [
	| riderID name requestedRides |

	<category: 'class methods'>
	Rider class >> new: anID name: aName [
		^ self new initialize: anID name: aName
	]

	<category: 'initialization'>
	initialize: anID name: aName [
		riderID := anID.
		name := aName.
		requestedRides := OrderedCollection new
	]

	<category: 'accessing'>
	name [ ^ name ]
	riderID [ ^ riderID ]

	<category: 'ride requests'>
	requestRide: aRide [
		requestedRides add: aRide
	]
	viewRides [
		^ 'Rider: ' , name , '\n' ,
		  'Requested Rides: \n' ,
		  (requestedRides isEmpty
			ifTrue: [ 'No rides requested yet.' ]
			ifFalse: [ requestedRides collect: [ :ride | ride rideDetails ] join: '\n' ])
	]
]

"System Functionality Demonstration"
| rides driver1 rider1 rider2 |

"Create some ride instances"
rides := OrderedCollection new.
rides add: (StandardRide new: 1 from: 'Home' to: 'Office' forDistance: 5).
rides add: (PremiumRide new: 2 from: 'Office' to: 'Airport' forDistance: 15).
rides add: (StandardRide new: 3 from: 'Park' to: 'Mall' forDistance: 3).
rides add: (PremiumRide new: 4 from: 'Mall' to: 'Restaurant' forDistance: 7).

"Create a driver"
driver1 := Driver new: 101 name: 'John Doe' rating: 4.8.

"Create some riders"
rider1 := Rider new: 201 name: 'Alice Smith'.
rider2 := Rider new: 202 name: 'Bob Johnson'.

"Riders request rides"
rider1 requestRide: (rides at: 1).
rider1 requestRide: (rides at: 2).
rider2 requestRide: (rides at: 3).

"Driver completes some rides"
driver1 addRide: (rides at: 1).
driver1 addRide: (rides at: 3).

"Demonstrate Polymorphism"
Transcript show: '--- Ride Details (Polymorphism) ---' , Character cr.
rides do: [ :ride | Transcript show: ride rideDetails , Character cr ].
Transcript cr.

Transcript show: '--- Ride Fares (Polymorphism) ---' , Character cr.
rides do: [ :ride | Transcript show: 'Ride ID: ' , ride rideID printString , ', Fare: $' , ride fare printString , Character cr ].
Transcript cr.

"Demonstrate Driver Information"
Transcript show: '--- Driver Information ---' , Character cr.
Transcript show: driver1 getDriverInfo , Character cr.
Transcript cr.

"Demonstrate Rider Ride History"
Transcript show: '--- Rider Ride History ---' , Character cr.
Transcript show: rider1 viewRides , Character cr.
Transcript cr.
Transcript show: rider2 viewRides , Character cr.