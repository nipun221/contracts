// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract SampleStorage {
  uint storedData;

  function set(uint x) public {
    storedData = x;
  }

  function get() public view returns (uint) {
    return storedData;
  }
}
      