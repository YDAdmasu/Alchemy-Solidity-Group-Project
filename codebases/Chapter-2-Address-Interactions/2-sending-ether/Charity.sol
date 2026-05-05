// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;
    address public charity;
    
    constructor(address _charity) {
        owner = msg.sender;
        charity = _charity;
    }
    
    // Allow contract to receive ether directly
    receive() external payable {
        // Ether received, automatically stored
    }
    
    // Transfer all remaining funds in the contract to the charity address
    function donate() public {
        (bool success, ) = charity.call{ value: address(this).balance }("");
        require(success, "Donation failed");
    }
}