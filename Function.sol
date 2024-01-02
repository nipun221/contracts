// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Functions {
    uint number = 51;

    function setNumber(uint x) public {
        number = x;
    }

    /* When you call a set function it creates a transaction that needs to be mined 
        and costs high amount of gas because it changes the blockchain whereas, for a get function
        there is a very minimal to zero gas amount required.
    */

    // When you create a public variable, its get function is automatically created.

    function getNumber() public view returns(uint) {
        return number;
    }
}