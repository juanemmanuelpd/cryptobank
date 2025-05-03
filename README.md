# Cryptobank
## Overview 🪙
Multi-user. Each user has the option to deposit and withdraw ETH in this smart contract, but only the admin can set the maximum amount of ETH each user can have in their account.
## Features 📃
* Multiuser – Supports secure deposits and withdrawals from multiple users.
* Customizable balance limit - Only the smart contract admin will be able to set the maximum ETH limit for all users' accounts.
## Technical details ⚙️
* Integrated Development Environment - Remix (Ethereum IDE).
* Solidity Compiler Version - 0.8.24.
## Deploying the contract 🛠️
1. Open Remix IDE. Available at https://remix.ethereum.org.
2. Go to the "File explorer" tab and create a new file with the .sol extension in the "Contracts" folder.
3. Copy the cryptobank.sol code and paste it into the .sol file you created.
4. Go to the "Solidity compiler" tab and select version 0.8.24.
5. Compile the code by pressing CTRL + S if you are on Windows, or COMMAND + S if you are on Mac OS.
6. If you find no errors, go to the "Deploy and Execute Transactions" tab and select your "Environment" and "Account".
7. Go to the implementation section, and in the "MaxBalance" box, enter the limit of ETH that each user can have in their account. Also, in the "admin" box, enter the address of the user who will be the admin of this crypto bank.
8. Finally, click on “Transact” to start the cryptobank.
## Code details 💻
* function depositETH() - Deposit ETH from your account whenever you want. This cryptobank will hold it for you.
* function withdrawETH - Withdraw all or part of the ETH you have saved without complications and instantly.
* function modifyMaxBalance - Only the administrator of this smart contract will be able to modify the limit of the balance that each user can have saved in this bank.
## Contract interface details 📌
* depositETH - Deposit ETH from your account to the smart contract.
* modifyMaxBalance - Set a new balance limit for each user with assets in the cryptobank.
* withdrawETH - Withdraw ETH from the cryptobank safely from your account.
* admin - Displays the address of the user who owns this smart contract.
* maxBalance - Shows the maximum ETH balance limit allowed for all users.
* userBalance - Displays the total balance of each user.

  CODE IS LAW!

