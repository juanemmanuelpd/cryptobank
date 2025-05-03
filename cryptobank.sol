// License

// SPDX-License-Identifier: LGPL-3.0-only

// Version

pragma solidity 0.8.24;

// Contract 

// Functions
    // 1. Deposit ETH
    // 2. Withdraw ETH

// Rules
    // 1. Multiuser
    // 2. Only can deposit ETH
    // 3. User can only withdraw previously deposited ETH
    // 4. Maximum balance 5 ETH
    // 5. Maximum balance modifiable by owner

contract cryptobank{

    // Variables

    uint256 public maxBalance;
    address public admin;
    mapping (address => uint256) public userBalance;

    // Events

    event e_depositETH(address user_, uint256 amount_);
    event e_withdrawETH(address user_, uint256 amount_);

    // Modifiers

    modifier onlyAdmin(){
        require(msg.sender == admin, "Not allowed");
        _;
    }

    // Constructor

    constructor(uint256 maxBalance_, address admin_){
        maxBalance = maxBalance_;
        admin = admin_;
    }

    // Functions

    // Deposit ETH

    function depositETH() external payable{
        require(userBalance[msg.sender] + msg.value <= maxBalance, "Maximum balance reached");
        userBalance[msg.sender] += msg.value;
        emit e_depositETH(msg.sender, msg.value);
    }  

    // Withdraw

    function withdrawETH (uint256 amount_) external {
        require(amount_ <= userBalance[msg.sender],"Not enough ETH");
        
        // Update state

        userBalance[msg.sender] -= amount_;

        // Transfer ETH

        (bool success,) = msg.sender.call {value: amount_}("") ;
        require (success, "Transfer failed");

        emit e_withdrawETH(msg.sender, amount_);
    }

    // Modify maximum balance

    function modifyMaxBalance(uint256 newMaxBalance_) external onlyAdmin{
        maxBalance = newMaxBalance_;
    }

}
