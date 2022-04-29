// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./OwnerV2.sol";

contract LuxOwnFactory {
    function createNew(string memory _productReference)
        public
        returns (LuxOwn)
    {
        LuxOwn luxown = new LuxOwn(_productReference);
        return luxown;
    }
}
