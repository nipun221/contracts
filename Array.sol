// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Array {
    uint[5] public arr = [2, 7, 15, 24, 40];  // This array have compile time fixed size
    uint[] public arr2;  // This array has dynamic size

    function setValues(uint index, uint value) public {
        arr2[index] = value;
    }

    function pushElement(uint x) public {
        arr2.push(x);
    }

    function popElement() public {
        arr2.pop();
    }

    function lengthArr() public view returns(uint) {
        return arr2.length;
    }

    function remove(uint index) public {
        delete arr2[index];
    }

    // Everything that will be stored in byte array will be in the form of hexadecimal digits

    // These are fixed byte arrays
    bytes3 public b3;   // 3 bytes array
    bytes2 public b2;  // 2 bytes array

    function setter() public {
        b3 = 'abc';
        b2 = 'ab';
    }

    // A Byte Array is a fixed-length array of 8-bit unsigned integers.
    // Bytes arrays cannot be modified
    // Padding of zero is added at the end if the value(by which array is initialized) does not occupy the entire space.

    bytes public dbyte = "abc"; // This is dynamic byte array

    function pushElementByte() public {
        dbyte.push('d');
    }

    function getElement(uint index) public view returns(bytes1) {
        return dbyte[index];
    }

    function getLength() public view returns(uint) {
        return dbyte.length;
    }
}