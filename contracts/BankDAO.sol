// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// The DAO bug: the balance is cleared after the external call, so the
// recipient's fallback can call withdraw again and be paid twice.
contract BankDAO {
    mapping(address => uint256) public balances;

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw() external {
        uint256 amount = balances[msg.sender];
        require(amount > 0, "nothing to withdraw");
        (bool ok, ) = msg.sender.call{value: amount}("");
        require(ok, "send failed");
        balances[msg.sender] = 0;
    }
}
