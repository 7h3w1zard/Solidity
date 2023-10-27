// SPDX-License-Identifier: MIT
// Solidity и смарт-контракты Ethereum, урок #48 | ERC2612, ERC20Permit, gasless approve, EIP712

pragma solidity ^0.8.20;

import './48#MyToken.sol';

contract Proxy {
    function doSend(
        MyToken mtk,
        address owner,
        address spender,
        uint value,
        uint deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        mtk.permit(owner, spender, value, deadline, v, r, s);
    }
}