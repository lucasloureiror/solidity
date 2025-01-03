// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract ContractA{

    function hello() external pure returns (string memory){
        return "Hello from Contract A?";
    }

    function helloInternal() internal pure returns (string memory){
        return "Hello from the inner workings of ContractA";
    }

    function helloPrivate() private pure returns (string memory){
        return "This function cannot be called by other contracts";
    }

}

//Bytecode of this contract adds the bytecode of ContractA
contract ContractB is ContractA{
    //I can use hello() from this function

    //Calling internal functions from within this contract
    function returnHelloInternal() external pure returns (string memory){
        return helloInternal();
    }
}