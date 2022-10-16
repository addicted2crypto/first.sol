// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

contract Counter {
    string public name;
    uint public count;
    uint public tokenId;


constructor(string memory _name, uint _initialCount, uint _tokenId) {
        name = _name;
        count = _initialCount;
        tokenId = _tokenId;

    }
    function increment() public returns(uint newCount) {
        count ++;
        return count;
    }

    function incrementToken() public returns(uint newToken){
        tokenId ++;
        return tokenId;
    }

    function decrement() public returns (uint newCount) {
        count --;
        return count;
    }

    function getCount() public view returns(uint){
        return count;

    }
    function getName() public view returns(string memory currentName) {
        return name;
    }
    function getTokenId() public view returns(uint _tokenId) {
       return tokenId;
    }

    function setName(string memory _newName) public returns(string memory newName){
        name = _newName;
        return name;
    }
}