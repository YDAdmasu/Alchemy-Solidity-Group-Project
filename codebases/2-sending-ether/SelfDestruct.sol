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
    
    // When donate is called, selfdestruct and send all funds to charity
    function donate() public {
        selfdestruct(payable(charity));
    }
}