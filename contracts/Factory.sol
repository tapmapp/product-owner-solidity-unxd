// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./Owner.sol";

contract Factory {
    function createNew() public {
        LuxOwn newNft = new LuxOwn();
    }
}
