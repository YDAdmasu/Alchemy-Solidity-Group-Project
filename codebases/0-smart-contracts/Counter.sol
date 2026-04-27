
```js
contract Agreement {
  address recipient;
  bool conditionIsMet;

  function payout() external {
    if(conditionIsMet) {
      sendValue(recipient);
    }
  }

  // ...
}
```

---
