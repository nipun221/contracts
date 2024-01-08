// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
    Storage                           Memory
1) Holds state variables         1) Holds local variables defined inside functions if they are reference types.
2) Persistent                    2) Not persistent
3) Cost gas                      3) No gas
3) Like a computer HDD           4) Like a computer RAM
*/

contract Storage {
    string[] public student = ['Tommy', 'Carl', 'Niko', 'Michael'];

    function memo() public view {
        string[] memory s1 = student;
        s1[3] = 'Franklin';
    }

    function store() public {
        string[] storage s1 = student;
        s1[3] = 'Trevor';
    }

    function demo() public view returns(uint block_no, uint timestamp, address msgSender) {
        return(block.number, block.timestamp, msg.sender);
    }
}