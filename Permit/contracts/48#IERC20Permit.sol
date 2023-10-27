// SPDX-License-Identifier: MIT
// Solidity и смарт-контракты Ethereum, урок #48 | ERC2612, ERC20Permit, аппрув без газа, EIP712

pragma solidity ^0.8.20;

interface IERC20Permit {
    function permit(
        address owner,
        address spender,
        uint value,
        uint deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    function nonces(address owner) external view returns(uint);

    function DOMAIN_SEPARATOR() external view returns(bytes32);
}