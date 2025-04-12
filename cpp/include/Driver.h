#ifndef DRIVER_H
#define DRIVER_H

#include <iostream>
#include <string>
#include <vector>

class Ride; // Forward declaration

class Driver {
public:
    Driver(int driverID, const std::string& name, double rating);
    ~Driver();

    void addRide(Ride* ride);
    void getDriverInfo() const;

private:
    int driverID_;
    std::string name_;
    double rating_;
    std::vector<Ride*> assignedRides_;
};

#endif