// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Burnable.sol';

contract I_Ayush16 is ERC20, ERC20Burnable {
    address public admin;

    constructor() ERC20('I_Ayush16', 'MTN') {
        _mint(msg.sender, 20000 * 10 ** 18);
        admin = msg.sender;
    }

    function mint(address to, uint256 amount) external {
        require(msg.sender == admin, 'Only admin can mint');
        _mint(to, amount);
    }
}

