// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LuxOwn is ERC721, Ownable {
    uint256 public tokenIds = 0;

    constructor(string memory _productReference)
        ERC721(_productReference, _productReference)
    {}

    function createItem(address _to, string memory _productIdentifier)
        public
        onlyOwner
    {
        _safeMint(_to, tokenIds, bytes(_productIdentifier));
        tokenIds = tokenIds + 1;
    }

    function getItemOwner(uint256 _tokenId) public view returns (address) {
        return ownerOf(_tokenId);
    }

    function transferItemOwner(
        address _from,
        address _to,
        uint256 _tokenId
    ) public returns (address) {
        safeTransferFrom(_from, _to, _tokenId);
        return ownerOf(_tokenId);
    }
}
