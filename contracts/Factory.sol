// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "./Owner.sol";

contract LuxOwnFactory {
    event ContractCreated(address _address);

    function createNew(string memory _productReference) public {
        LuxOwn luxown = new LuxOwn(_productReference);
        emit ContractCreated(address(luxown));
    }
}
