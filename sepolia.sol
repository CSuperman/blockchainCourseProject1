// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

contract Sepolia {
    // setup
    // terms

    event messagechanged(string oldmsg, string newmsg);

    string public message;

    constructor(string memory amessage) {
        message = amessage;
    }

    function update(string memory newmesssage) public {
        string memory oldmsg = message;
        message = newmesssage;

        emit messagechanged(oldmsg, newmesssage);

    }
}
