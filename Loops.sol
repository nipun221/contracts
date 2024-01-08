// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Loops {
    uint[3] public arr;
    uint[10] public arr2;
    uint count;

    function whileLoop() public {
        while (count<arr.length) {
            arr[count] = count;
            count++;
        }

        for (uint i=0; i<arr2.length; i++) {
            arr2[i] = i+1;
        }

        do {
            arr2[count] = count+1;
        } while (count<3);
    }
}