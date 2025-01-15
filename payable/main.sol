// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract EtherDonation{

    //This address can receive Ether with the payable modifier
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }

    function donateEther() public payable {
        require(msg.value >= 1, "Please, Donate at least 1 ETH");
    }

    function returnEtherBalance() public view returns (uint256){
        return address(this).balance;
    }

    function withdrawEtherBalance() public{
        owner.transfer(address(this).balance);
    }

}