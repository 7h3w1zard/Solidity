// SPDX-License-Identifier: MIT
// Solidity и смарт-контракты Ethereum, урок #48 | ERC2612, ERC20Permit, аппрув без газа, EIP712

pragma solidity ^0.8.20;

import './48#ERC20.sol';
import './48#ERC20Permit.sol';

contract MyToken is ERC20, ERC20Permit {
    address private owner;

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    constructor() ERC20("Mytoken", "MTK") ERC20Permit("MyToken") {
        owner = msg.sender;
        _mint(msg.sender, 100 * 10 ** decimals());
    }

    function mint(address to, uint amount) public onlyOwner {
        _mint(to, amount);
    }
}

