// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

abstract contract ContractA{
    function whoAmI() public virtual pure returns (string memory){
    }
}


contract ContractB is ContractA{
    function whoAmI() public override pure returns (string memory){
        return "ContractB created ContractA implementation";
    }
}