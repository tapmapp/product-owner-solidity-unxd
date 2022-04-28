// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LuxOwn is ERC721, Ownable {
    uint256 public itemCounter = 0;

    constructor(string memory _productReference)
        ERC721(_productReference, _productReference)
    {}

    function createItem(address _to, uint256 _productIdentifier)
        public
        onlyOwner
        returns (uint256)
    {
        _safeMint(_to, _productIdentifier);

        itemCounter = itemCounter + 1;
        return _productIdentifier;
    }

    function getOwner(uint256 _productIdentifier)
        public
        view
        returns (address)
    {
        return ownerOf(_productIdentifier);
    }

    function transferOnwer(
        address _from,
        address _to,
        uint256 _productIdentifier
    ) public returns (address) {
        safeTransferFrom(_from, _to, _productIdentifier);
        return ownerOf(_productIdentifier);
    }
}
