#ifndef RIDER_H
#define RIDER_H

#include <iostream>
#include <string>
#include <vector>

class Ride; // Forward declaration

class Rider {
public:
    Rider(int riderID, const std::string& name);
    ~Rider();

    void requestRide(Ride* ride);
    void viewRides() const;

private:
    int riderID_;
    std::string name_;
    std::vector<Ride*> requestedRides_;
};

#endif