// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LuxOwn is ERC721, ERC721Burnable, Ownable {
    constructor() ERC721("LuxOwn", "LXO") {}

    function safeMint(address to, uint256 productIdentifier) public onlyOwner {
        _safeMint(to, productIdentifier);
    }
}
