// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

struct Student {  
    int roll;
    string name;
    int age;
}  // This is a struct

contract Boolean {
    bool /*public*/ value = false;  // boolean

    function check(uint num) public returns(bool) {
        if (num == 0) {
            value = false;
            return value;
        }
        else if (num == 1) {
            value = true;
            return value;
        }
        else {
            return value;
        }
    }

    Student public s1;

    constructor(int _roll, string memory _name, int _age) {
        s1.roll = _roll;
        s1.name = _name;
        s1.age = _age;
    }

    function change(int _roll, string memory _name, int _age) public  {
        Student memory new_student = Student({
            roll : _roll,
            name : _name,
            age : _age
        });
        s1 = new_student;
    }

    enum user{allowed, not_allowed, wait}  // can be written outside contract

    user public u1 = user.allowed;
    user public u2 = user.wait;
    int public lottery = 10000;

    function owner() public {
        if (u1 == user.allowed) {
            lottery = 0;
        }
    }

    function changeOwner() public {
        u1 = user.not_allowed;
    }
}