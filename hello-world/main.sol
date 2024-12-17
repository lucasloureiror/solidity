// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.28;

contract HelloWorld {

    function SayHello() external pure returns (string memory) {
        return "Hello World!";
    }

    function Greet(string memory _name) external pure returns (string memory, string memory){
        return ("Hello,", _name);
    }
}

