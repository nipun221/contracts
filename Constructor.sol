// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Constructor {
    uint public  count;

    constructor(uint new_count) {
        count = new_count;
    }

    // Constructor is executed only once
    // You can create only one constructor and that is optional
    // A default constructor is created by the compiler if there is no explictily defined constructor 
}