# Metacrafters-myToken-ETH-beginner
"MyToken" is a basic ERC20-like token implemented in Solidity. It supports minting and burning tokens, allowing you to increase or decrease the total supply and manage individual balances.
Certainly! Here's a README file for the provided Solidity contract:

## Overview
`MyToken` is a simple ERC20-like token contract implemented in Solidity. It includes basic functionalities for minting and burning tokens, managing balances, and tracking the total supply of the tokens.

## Contract Details
- **tokenName:** MyToken
- **tokenSymbol:** MTK
- **circulatingSupply:** Variable, depending on minting and burning actions.

## Functions
### Public Variables
- `string public tokenName`: Stores the name of the token.
- `string public tokenSymbol`: Stores the abbreviation of the token.
- `uint256 public circulatingSupply`: Tracks the total supply of the token.

### Balances Mapping
- `mapping(address => uint256) public addressBalances`: Maps each address to its corresponding balance of tokens.

### Mint Function
```solidity
function mint(address recipient, uint256 _amount) public
```

- **Parameters:**
  - `address recipient`: The address to which the newly minted tokens will be assigned.
  - `uint256 _amount`: The number of tokens to mint.
- **Description:** Increases the total supply of the tokens by `_amount` and increases the balance of `recipient` by the same amount.

### Burn Function
```solidity
function burn(address holder, uint256 _amount) public
```

- **Parameters:**
  - `address holder`: The address from which the tokens will be burned.
  - `uint256 _amount`: The number of tokens to burn.
- **Description:** Decreases the total supply of the tokens by `_amount` and decreases the balance of `holder` by the same amount.
- **Requirements:** The balance of `holder` must be greater than or equal to `_amount`.

## Usage
1. **Minting Tokens:**

   Call the `mint` function with the desired address and amount:

   ```solidity
   mint(address recipient, uint256 amount);
   ```

2. **Burning Tokens:**
   Call the `burn` function with the desired address and amount:

   ```solidity
   burn(address holder, uint256 amount);
   ```

   Ensure the account has enough balance to burn the specified amount of tokens.

## Example
```solidity
// Minting 100 tokens to address 0x123...
mint(0x1234567890abcdef1234567890abcdef12345678, 100);

// Burning 50 tokens from address 0x123...
burn(0x1234567890abcdef1234567890abcdef12345678, 50);
```

## License
This contract is licensed under the MIT License.

## Disclaimer
This is a basic token contract and should not be used as-is for production. Always perform thorough security audits and consider edge cases before deploying any smart contract.
