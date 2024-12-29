// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract Main {
    function outsiderFunction() external{
        //This function can only be called by other contract or a transaction
    }

    function publicFunction() public{
        //This function can be called by this contract or a transaction.
        //Also creates getter for variables when used with public
    }

    function _privateFunction() private{
        //This function can be called by this contract
    }

    function _internalFunction() internal{
        //This function can be called by this contract and others that inherit it
    }
}

contract StateModifier{
    function pureFunction() public pure {
        //Disallows modification or access of state.
        //Usually for helper functions
    }

    function viewFunction() public view {
        //Disallows modification of state (allow access)
    }

    function unlabeledFunction() public {
        //Can modify the state by default.
    }
}