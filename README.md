# Solidity101-FundMe
Our FundMe contract is a perfect example of a crowdfunded project. Think of it as your very own decentralized Kickstarter, where users can send any native blockchain cryptocurrency. It allows the owner of the contract to withdraw all the funds collected for their new project. It is designed so that it can be deployed on a testnet.

Key Takeaway from the concept of using ABI and Interfaces is:

Suppose you have a data type called AggregatorV3Interface and we have to define a variable called x having the data type of AggregatorV3Interface. we can do it in two ways:

## 1) Using Constructor

        AggregatorV3Interface public dataFeed;

        constructor(){
            dataFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        }

now, use it in a function. example: https://docs.chain.link/data-feeds/using-data-feeds

## 2) Defining them directly inside the function

       AggregatorV3Interface dataFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);

example: https://updraft.cyfrin.io/courses/solidity/fund-me/getting-prices-from-chainlink?lesson_format=video and https://github.com/trippyseshh/Solidity101-FundMe/blob/main/usingABI
    
