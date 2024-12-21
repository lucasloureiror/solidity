// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract simpleStorage{
    uint private interactions;

    constructor(){
        interactions = 0;
    }
    function incrementor() internal returns (uint){
        interactions += 1;
        return interactions;
    }
    function Interact () external returns (uint){
        return incrementor();
    }
}