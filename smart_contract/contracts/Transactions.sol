// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

contract Transactions {
    uint256 transactionCount;
    event Transfer(address from, address receiver, string message, uint amount, uint256 timestamp, string keyword);

    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions;

    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));
    }
    function getAllTransactions() public view returns (TransferStruct[] memory) {
       // return Transactions;
    }
    function getTransactionCount() public view returns (uint256){
       // return Transactions;
    }
}
