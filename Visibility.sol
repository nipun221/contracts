// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
 /        Public      Private     Internal        External
Outside     Yes         No          No              Yes
Within      Yes         Yes         Yes             No
Derived     Yes         No          Yes             Yes
Other       Yes         No          No              Yes
*/

contract A {
    function f1() public pure returns(uint) {
        return 1;
    }

    function f2() private pure returns(uint) {
        return 2;
    }

    function f3() internal pure returns(uint) {
        uint num = f2();
        return num+1;
    }

    function f4() external pure returns(uint) {
        return 4;
    }
}

contract B is A {
    uint public bx = f1() + f3();
}

contract C {
    A obj = new A();
    uint public cx = obj.f4();
}
