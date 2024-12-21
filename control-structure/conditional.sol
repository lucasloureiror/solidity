// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract Conditional {

    function is_odd(uint256 _number) external pure returns (bool result){
        //Just so I can try the else if
        if (_number == 0){
            return false;
        }
        else if (_number % 2 == 0){
            return false;
        }
        else {
            return true;
        }
    }
}