// SPDX-License-Identifier: MIT

// needs to be in same folder as simpleStorage.sol

// use soilidity version 0.8.0 or greater
pragma solidity >=0.8.0; //compile with fn + F5

// import other solidity files 
import "./cookieContract.sol";

contract cookieFactory{

    // make a new object out of the cookieclass class from the simplestorage file
    cookieContract[] public cookieContractArray;

    function createSimpleStorageContract() public{
        // create an object of the type based on the imported simpleStorage.sol with the name newNameforObject
        // which is a "new" object from simpleStorage()
        cookieContract cookieObjects = new cookieContract(); 
        cookieContractArray.push(cookieObjects);
    }

    // create function to interact with another function from SimpleStorage.sol
    // this one reads in an index and a number and creates a object based on the cookieContract class
    // then uses the store function from cookieClass in the new object (cookieObjects.store()) to save the number
    function interactFun(uint256 _index, uint256 _number) public {
        //to interact with the we need 2 things:
        // the Adress of the Block on which the function was deploid on
        cookieContract cookieObjects = cookieContract( address( cookieContractArray[_index] ));
        // The ABI = application Binary Interface
        cookieObjects.store(_number);
    }
    // short version of this function
    function interactFun(uint256 _index, uint256 _number) public {
        cookieContract( address( cookieContractArray[_index] )).store(_number);


    function interactSee(uint256 _index) public view returns (uint256){
        // aces contract
        cookieContract cookieObject2 = cookieContract(address(cookieContractArray[_index]));
        return cookieObject2.checkOut();
    }
    //short version
    function interactSee(uint256 _index) public view returns (uint256){
        // aces contract
        return cookieContract(address(cookieContractArray[_index])).checkOut();
    }
}