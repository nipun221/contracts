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
}





