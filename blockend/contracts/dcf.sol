// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract OwnerAccess {

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can access");
        _;
    }

    function ownerOnlyFunction() public onlyOwner {
        // Only the owner can execute this function
    }

    function getOwner() public view returns (address) {
        return owner;
    }
}