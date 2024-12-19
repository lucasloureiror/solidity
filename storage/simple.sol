// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract simpleStorage{
    uint private interactions;

    constructor(){
        interactions = 0;
    }
    function incrementor() private returns (uint){
        interactions += 1;
        return interactions;
    }
    function Interact () public returns (uint){
        return incrementor();
    }
}