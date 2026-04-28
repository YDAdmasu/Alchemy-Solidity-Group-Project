contract Example {
  uint256 a; // storage slot - 0x0
  uint256 b; // storage slot - 0x1
  bool public c; // storage slot - 0x2

  function store() external {
    // read storage slot 0x1
    // store it in storage slot 0x0
    a = b;

    // read storage slot 0x1
    // store it in memory (not persistent!)
    uint x = b;
  }
}