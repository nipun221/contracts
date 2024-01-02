// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract State {
    uint public number; // It is a state variable

    /*  We can change the value of state variable using 3 methods only
        1) using constructor
        2) initializing the variable at declaration
        3) using the function to set a value
    */

    // State variables are permanently stored on contract storage
    // State variables are expensive and requires lots of gas
    // Storage is not dynamically allocated
    // Instance of the contract cannot have other state variables besides those already declared
    // If you want to add more variables then you have to re-deploy the contract. Hence, a new instance will be created.
    // You can use this new variable in new instance only.

    constructor() {
        number = 1024;
    }

    function store() pure public returns(uint) {

        uint id = 10; // This is a local variable because it is declared inside a function.
        return id;

        // A local variable is stored on stack
        // They doesn't cost gas
        // There are some data types that reference the storage by default example:-string
        // Memory keyword can't be used at contract level (outside a function)
    }

    function strStore() pure public returns (string memory) {
        string memory str = "hello"; // By default string is stored on contract storage even when declared inside a function.
        return str;
        // To store a string in a stack, we use 'memory' keyword with 'string' keyword
        // Doing this resolves the conflict
    }
}