# Ride Sharing System - OOP Implementation

## Overview
This project implements a Ride Sharing System in both **Smalltalk** and **C++** to demonstrate object-oriented programming principles including encapsulation, inheritance, and polymorphism. The system includes functionality for managing rides, drivers, and riders.

---

## Features
- **Ride Class Hierarchy**: Base `Ride` class with `StandardRide` and `PremiumRide` subclasses.
- **Fare Calculation**: Polymorphic fare calculation based on ride type.
- **Driver Management**: Track driver information and assigned rides.
- **Rider Management**: Handle rider information and ride requests.
- **Encapsulation**: Proper data hiding through private members and public methods.
- **Polymorphism**: Process different ride types through common interfaces.

---

## Implementation Languages
- **C++**: Object-oriented implementation.
- **Smalltalk**: Pure object-oriented implementation.

---

## How to Run

### C++ Implementation
#### Prerequisites:
- C++ compiler (e.g., `g++` recommended).
- `Make` (optional).

#### Steps:
1. Navigate to the `cpp` directory.
2. Compile the code:
   ```bash
   g++ -std=c++11 main.cpp Ride.cpp StandardRide.cpp PremiumRide.cpp Driver.cpp Rider.cpp -o ride_sharing
   ```
3. Run the executable:
   ```bash
   ./ride_sharing
   ```

#### Alternative with Make:
1. Run `make` in the `cpp` directory:
   ```bash
   make
   ```
2. Then run:
   ```bash
   ./ride_sharing
   ```

---

### Smalltalk Implementation
#### Prerequisites:
- Install the [Pharo Smalltalk environment](https://pharo.org/download).

#### Steps:
1. Launch Pharo.
2. Create a new package called `"RideSharing"`.
3. Create classes as defined in the Smalltalk files.
4. Open a Workspace and execute test code like the following:

   ```smalltalk
   | driver rider standard premium rides |
   driver := Driver new id: 'D1'; name: 'John Driver'; rating: 4.5.
   rider := Rider new id: 'R1'; name: 'Alice Rider'.

   standard := StandardRide new
       id: 'S1';
       pickup: '123 Main St';
       dropoff: '456 Oak Ave';
       distance: 5.2.

   premium := PremiumRide new
       id: 'P1';
       pickup: '789 Pine Rd';
       dropoff: '321 Elm Blvd';
       distance: 8.5.

   rider requestRide: standard.
   rider requestRide: premium.

   driver addRide: standard.
   driver addRide: premium.

   rides := OrderedCollection with: standard with: premium.

   rides do: [:ride | 
       Transcript show: ride rideDetails; cr.
       Transcript show: 'Fare: ', ride fare asString; cr; cr].

   Transcript show: driver getDriverInfo; cr.
   Transcript show: rider viewRides; cr.
   ```

---

## Project Structure
```
ride-sharing-system/
├── cpp/
│   ├── Ride.h
│   ├── Ride.cpp
│   ├── StandardRide.h
│   ├── StandardRide.cpp
│   ├── PremiumRide.h
│   ├── PremiumRide.cpp
│   ├── Driver.h
│   ├── Driver.cpp
│   ├── Rider.h
│   ├── Rider.cpp
│   ├── main.cpp
│   └── Makefile
├── smalltalk/
│   ├── Ride.st
└── README.md
```

---

## OOP Principles Demonstrated
- **Encapsulation**: Private member variables with public getters/setters.
- **Inheritance**: `StandardRide` and `PremiumRide` inherit from `Ride`.
- **Polymorphism**: Different ride types calculate fares differently through overridden methods.

---

### Notes
- Ensure all dependencies are installed before running the implementations.
- The project demonstrates various OOP principles effectively using two different programming languages.

---

This formatting improves readability by using consistent headings, spacing, and code blocks. Let me know if further adjustments are needed!
