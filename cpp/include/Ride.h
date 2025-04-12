#ifndef RIDE_H
#define RIDE_H

#include <iostream>
#include <string>

class Ride {
public:
    Ride(int rideID, const std::string& pickupLocation, const std::string& dropoffLocation, double baseFare);
    virtual ~Ride();

    int getRideID() const;
    virtual void calculateFare() = 0;
    virtual void rideDetails() const;

protected:
    int rideID_;
    std::string pickupLocation_;
    std::string dropoffLocation_;
    double baseFare_;
    double fare_;
};

#endif