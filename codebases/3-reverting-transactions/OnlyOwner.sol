// SPDX-License-Identifier: MIT
contract Contract {
    address public owner;
    
    constructor() payable {
        owner = msg.sender;
    }
    
    // Create a public function withdraw that only the deployer can call
    function withdraw() public {
        require(msg.sender == owner, "Only owner can withdraw");
        (bool success, ) = owner.call{ value: address(this).balance }("");
        require(success, "Transfer failed");
    }
    
    // Allow contract to receive ether
    receive() external payable { }
}