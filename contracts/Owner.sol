// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LuxOwn is ERC721, ERC721Burnable, Ownable {
    uint256 brandId;
    uint256 productReference;
    uint256 productIdentifier;

    event nftDeployed(
        uint256 brandId,
        uint256 productReference,
        uint256 productIdentifier
    );
    event nftMinted(
        address to,
        uint256 brandId,
        uint256 productReference,
        uint256 productIdentifier
    );

    constructor(
        uint256 _brandId,
        uint256 _productReference,
        uint256 _productIdentifier
    ) ERC721("LuxOwn", "LXO") {
        brandId = _brandId;
        productReference = _productReference;
        productIdentifier = _productIdentifier;

        emit nftDeployed(brandId, productReference, productIdentifier);
    }

    function safeMint(
        address _to,
        uint256 _brandId,
        uint256 _productReference,
        uint256 _productIdentifier
    ) public onlyOwner {
        _safeMint(_to, productIdentifier);

        emit nftMinted(_to, _brandId, _productReference, _productIdentifier);
    }
}
