// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Identity {
    string name;
    uint age;

    constructor() {
        name = "Nipun";
        age = 21;
    }

    function getName() view public returns(string memory) {
        return name;
    }

    function getAge() view public returns (uint) {
        return age;
    }

    function setAge() public {
        age = age + 1;
    }

    // There are two types of int

    int a = 1;   // Integer
    uint b = 2;  // Unsigned Integers

    // They both can be of different sizes
    // Ranging from 8 to 256 bits (int8 to int256 and uint8 to uint256)
    // int is alias of int256, similarly uint is uint256
    // By default int and uint have value = 0, there is no concept of nil/na in solidity.
    // Overflow gets detected at compile time

    /* Range 
    int8 (-128 to 127)            uint8 (0 to 255)
    int16 (-32768 to 32767)       uint16 (0 to 65535)
    intn (-2^(n-1) to 2^(n-1)-1   uintn  (0 to 2^(n)-1)
    */ 
}





