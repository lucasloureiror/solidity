// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;



//The "new" keyword is used to instantiate memory arrays with a size based on a variable and to o write a contract that creates other contract,
contract Complimenter {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }

    function compliment() public view returns(string memory) {
        return string.concat("You look great today, ", name);
    }
}

contract ComplimenterFactory{

    function createComplimenter(string memory _name) public returns (address){
        Complimenter newContract = new Complimenter(_name);
        return address(newContract);
    }
}