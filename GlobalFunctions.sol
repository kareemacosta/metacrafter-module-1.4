pragma solidity ^0.8.3;

contract GlobalFunctions {
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    function transferOwnership(address newOwner) public {
        require(msg.sender == owner, "Only the owner can transfer ownership.");
        owner = newOwner;
    }

    function executeTransaction(address _to, uint256 _value) public {
        require(msg.sender == owner, "Only the owner can execute transactions.");
        _to.transfer(_value);
    }
}
