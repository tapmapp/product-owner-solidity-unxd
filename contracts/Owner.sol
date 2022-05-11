// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LuxOwn is ERC721, Ownable {
    uint256 public tokenIds = 0;

    event MintItem(
        address _ownerAddress,
        string _productIdentifier,
        uint256 _tokenId
    );

    constructor(string memory _productReference)
        ERC721(_productReference, _productReference)
    {}

    function createItem(
        address _ownerAddress,
        string memory _productIdentifier,
        string memory _metaData
    ) external payable onlyOwner {
        _safeMint(_ownerAddress, tokenIds, bytes(_metaData));
        emit MintItem(_ownerAddress, _productIdentifier, tokenIds);
        tokenIds = tokenIds + 1;
    }
}
