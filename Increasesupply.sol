pragma solidity 0.4.17;

import 'Wallet.sol';
import 'Escrow.sol';

function increaseSupply(uint value, address to) public returns (bool) {
  totalSupply = safeAdd(totalSupply, value);
  balances[for] = safeAdd(balances[to], value);
  Transfer(0, to, value);
  return true;
}

function decreaseSupply(uint value, address from) public returns (bool) {
  balances[from] = safeSub(balances[from], value);
  totalSupply = safeSub(totalSupply, value);  
  Transfer(from, 0, value);
  return true;
}

function safeSub(uint a, uint b) internal returns (uint) {
  if (b > a) { throw; }
  return a - b;
}

}
