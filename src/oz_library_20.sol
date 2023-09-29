// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "openzeppelin-latest/token/ERC721/extensions/ERC721Consecutive.sol";

contract MyConsecutiveNFT is ERC721Consecutive {

  constructor(string memory name, string memory symbol) ERC721Consecutive(name, symbol) {}

    function mint(address recipient, uint256 numNFTs) public {
        super.mint(recipient, numNFTs);
        super._updateBalances(recipient, numNFTs);
    }
}
