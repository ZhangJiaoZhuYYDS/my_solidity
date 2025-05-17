// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Name {
  function testError(uint i) external pure  {
    require(i >=10, "error");  // 不满足前提条件，触发错误
  }   

  function testRevert(uint i) external pure {
    if (i > 10) {
        revert("error");
    }
  } 

  uint a = 5;  
  function testAssert() external view {
    assert(a < 6); 
  }

  function incr() external {
    a++;
  }

}