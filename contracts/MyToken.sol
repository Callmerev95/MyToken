// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

/// @title MyToken - A simple ERC-20-like token contract
/// @author Callmerev
/// @notice This contract implements basic token functionalities like minting and transferring.
/// @dev This is a simplified token contract without approval mechanisms.

contract MyToken {
    /// @notice Mapping to store the balance of each address
    mapping(address => uint256) private balances;

    /// @notice The total supply of tokens in circulation
    uint256 public totalSupply;

    /// @notice The owner of the contract, who has the right to mint tokens
    address private owner;

    /// @notice Contract constructor that initializes the total supply and assigns it to the owner
    /// @param initialSupply The initial amount of tokens to be minted
    constructor(uint256 initialSupply) {
        owner = msg.sender;
        mint(msg.sender, initialSupply);
    }

    /// @notice Function to mint new tokens and assign them to a recipient
    /// @dev Only the contract owner can call this function
    /// @param recipient The address receiving the newly minted tokens
    /// @param amount The number of tokens to mint
    function mint(address recipient, uint256 amount) public {
        require(msg.sender == owner, "Only the owner can perform this action");
        balances[recipient] += amount;
        totalSupply += amount;
    }

    /// @notice Function to check the balance of a given address
    /// @param account The address whose balance is being queried
    /// @return The token balance of the specified address
    function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }

    /// @notice Function to transfer tokens from the sender to another address
    /// @dev The sender must have enough balance to transfer the specified amount
    /// @param recipient The address receiving the tokens
    /// @param amount The number of tokens to transfer
    /// @return A boolean indicating whether the transfer was successful
    function transfer(address recipient, uint256 amount) public returns (bool) {
        require(amount <= balances[msg.sender], "Not enough balance.");
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
        return true;
    }
}