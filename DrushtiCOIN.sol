pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract DrushtiCOIN is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function DrushtiCOIN(address _owner)  UpgradeableToken(_owner) {
    name = "DrushtiCOIN";
    symbol = "DCOIN";
    totalSupply = 1000000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}