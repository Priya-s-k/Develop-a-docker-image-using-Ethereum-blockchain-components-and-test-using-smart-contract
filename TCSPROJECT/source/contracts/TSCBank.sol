pragma solidity ^0.4.25;
contract TSCBank {

    mapping (address => uint) internal balances;
    address public owner;
    event LogDepositMade(address accountAddress, uint amount);
    constructor() public {
        owner = msg.sender;
    }
    function enroll() public returns (uint){
      balances[msg.sender]=1000;
      return balances[msg.sender];
    }
    function deposit() public payable returns (uint) {
          balances[msg.sender] += msg.value;
          emit LogDepositMade(msg.sender, msg.value);
          return balances[msg.sender];
    }

    function withdraw(uint withdrawAmount) public returns (uint remainingBal) {

        require(withdrawAmount <= balances[msg.sender]);

        balances[msg.sender] -= withdrawAmount;
        if(!msg.sender.send(withdrawAmount))
        {
            balances[msg.sender] += withdrawAmount;
        }

        remainingBal=balances[msg.sender];
    }
    function balance() public constant returns (uint) {

        return balances[msg.sender];
    }
    function () public {
        revert();
    }
}
