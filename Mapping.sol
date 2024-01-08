// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Concept of keys and values
// mapping(key => value)

contract Mapping {
    struct Student {
        string name;
        int class;
    }

    mapping(int => Student) public data;

    function setter(int _roll, int _class, string memory _name) public  {
        data[_roll] = Student(_name, _class);
    } // Mapping is using when values are assigned in non-sequential order

    // The key cannot be of type of mapping, enum, dynamic array, struct
    // The value can be of any type
    // Mappings are always stored in storage irrespective of weather they are declared in contract storage or not
}