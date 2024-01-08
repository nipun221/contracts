// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Conditional {
    function foo(uint x) public pure returns(uint) {
        if (x < 10) {
            return 0;
        } 
        else if (x > 100) {
            return 2;
        }
        else {
            return 1;
        }
    }

    function numFunc(int num) public pure returns(string memory) {
        if (num < 0) {
            return "negative number";
        } 
        else if (num > 0){
            return "positive number";
        }
        else {
            return "zero!";
        }
    }
}