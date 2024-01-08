// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Pay {
    // Address of the user to whom Ether will be sent
    address payable user =  payable(0x17F6AD8Ef982297579C203069C1DbfFE4348c372);

    // Function to allow the contract to receive Ether
    function payEther() public payable {}

    // Function to get the balance of the contract (view function)
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    // Function to send 1 Ether to the user's account
    function sendEtherAccount() public {
        // Transfer 1 Ether to the user's address
        user.transfer(1 ether);
    }
}
