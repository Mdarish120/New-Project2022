// SPD-License-Identifier: UNLICENSED
pragma  solidity ^0.8.0;
import "hardhat/console.sol";


contract Transactions{
    uint256 TransactionCount;

    event Transfer(address from ,address reciever ,uint amount ,uint256 timestamp ,string keyword,string message);

    struct  TransferStruct{
        address  sender;
        address reciever;
        uint amount;
        uint256 timestamp;
        string  keyword;
        string message;

    }
 
 TransferStruct[]  transactions;

 function  addToBlockchain(address payable reciever,uint amount,string memory keyword,string memory message) public
 {   
     TransactionCount+=1;
      transactions.push( TransferStruct(msg.sender,reciever,amount,block.timestamp,keyword,message));
      emit  Transfer(msg.sender,reciever,amount,block.timestamp,keyword,message);
 }

 function getAllTransactions() public view returns(TransferStruct[] memory)
 {
     return transactions;
 }

 function getTransactionCount() public view  returns(uint256)
 {
     return   TransactionCount;
 }

}