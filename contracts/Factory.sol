// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./Owner.sol";

contract LuxOwnFactory {
    function createNew(
        uint256 _brandId,
        uint256 _productReference,
        uint256 _productIdentifier
    ) public {
        new LuxOwn(_brandId, _productReference, _productIdentifier);
    }
}
