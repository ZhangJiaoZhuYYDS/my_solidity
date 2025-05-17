// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Demo {
    uint public x;
    address public owner;

    // 构造函数
    constructor(uint _x) {
        owner = msg.sender;
        x = _x;
    }

    modifier onlyOwner() {
        require(msg.sender == owner,"not the owner,not the owner!");
        _;
    }

    function getX() public view  returns (uint) {
        return x;
    }

    function setX(uint _x) public onlyOwner {
        x = _x;
    }

    function setOwner (address _owner) external onlyOwner{
        require(_owner != address(0),"the owner can ont to be zero!");
        owner = _owner;
    }
}