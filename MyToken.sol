// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // Public variables to store token details
    string public tokenName = "MyToken";
    string public tokenSymbol = "MTK";
    uint256 public circulatingSupply;

    // Mapping to store balances associated with addresses
    mapping(address => uint256) public addressBalances;

    // Function to mint new tokens
    function mint(address recipient, uint256 amount) public {
        circulatingSupply += amount;
        addressBalances[recipient] += amount;
    }

    // Function to burn existing tokens
    function burn(address holder, uint256 amount) public {
        require(addressBalances[holder] >= amount, "Insufficient balance for burn");

        circulatingSupply -= amount;
        addressBalances[holder] -= amount;
    }
}
