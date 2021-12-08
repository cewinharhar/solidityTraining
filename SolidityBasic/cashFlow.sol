// SPDX-License-Identifier: MIT

// needs to be in same folder as simpleStorage.sol

// use soilidity version between 0.8.0 and 0.9.0
pragma solidity >=0.8.0 <0.9.0; //compile with fn + F5

contract cashFlow {


    // create a mapping (dict) to save the values which each adress payed
    mapping(address => uint256) public adressToFund;

    // function with status "payable" can accept transaction of etheriums
    // the class "cashFlow" owns the send amount
    function cash() public payable {
        //           adresSender    amount
        adressToFund[msg.sender] += msg.value;
        // to setup a funding minimum value we need to know what the conversion rate is
        // ex. ETH -> CHF
    }



}