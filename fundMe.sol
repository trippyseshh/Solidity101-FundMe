// get funds from users
// withdraw funds
// set min value that people can send

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

import {AggregatorV3Interface} from "lib/chainlink-brownie-contracts/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract funding {
    // min usd value
    uint256 minUsd = 5;

    // first of all, we will create a function to recieve funds
    function getFunds() public payable {
        require(getConversionrate(msg.value) > minUsd, "Send More");
    }

    // creating a function to convert usd to eth
    // getting current eth value in usd

    function price() public view returns (uint256) {
        AggregatorV3Interface dataFeed = AggregatorV3Interface(
            0x694AA1769357215DE4FAC081bf1f309aDC325306
        );
        (, int answer, , , ) = dataFeed.latestRoundData();
        return uint256(answer * 1e10);
    }

    // converting the funded amount
    function getConversionrate(uint256 ethAmount) public view returns(uint256){
        uint256 ethPrice = price();
        uint256 ethAmountinUsd = uint256(ethPrice * ethAmount / 1e18);
        return ethAmountinUsd;
    }
}
