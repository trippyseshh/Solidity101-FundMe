// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// get funds from users
// withdraw those funds
// set minimum value for funding in USD
contract fundme{

    int public number;

    function fundFunction() public payable{
        // msg.value to see how much value someone is sending
        //msg.value;
        // now, to restrict the users to send a min value use:
        number = 5;
        require(msg.value > 1e18, "You need to pay more than 1 ETH"); // if this is not met, number gets reverted back to initial state
    }
}
