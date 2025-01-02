// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract GarageManager{
    struct Car{
        string make;
        string model;
        string color;
        uint8 numberOfDoors;
    }

    mapping (address => Car[]) public garage;

    function addCar(string calldata _make, string calldata _model, string calldata _color, uint8 _numberOfDoors) external returns (bool){
        garage[msg.sender].push(Car(_make, _model, _color, _numberOfDoors));
        return true;
    }

    function getMyCars() public view returns (Car[] memory){
        return garage[msg.sender];
    }

    function getUsercars(address _address) public view returns (Car[] memory){
        return garage[_address];
    }

    function updateCar(uint _index,string calldata _make, string calldata _model, string calldata _color, uint8 _numberOfDoor ) external returns(bool){
        garage[msg.sender][_index] = Car(
            _make,
            _model,
            _color,
            _numberOfDoor
        );
        return true;
    }

    function resetMyGarage() public returns (bool){
        delete garage[msg.sender];
        return true;
    }

}