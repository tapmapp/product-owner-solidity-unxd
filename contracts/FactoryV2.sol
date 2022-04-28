// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract LuxOwn is ERC721 {
    uint256 public itemCounter = 0;

    constructor(string memory _productReference)
        ERC721(_productReference, _productReference)
    {}

    function createItem(address _to, uint256 _productIdentifier)
        public
        returns (uint256)
    {
        _safeMint(_to, _productIdentifier);
        itemCounter = itemCounter + 1;
        return _productIdentifier;
    }
}
