// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { PaymentSplitter } from "openzeppelin-contracts/contracts/finance/PaymentSplitter.sol";
import "forge-std/Base.sol";

contract BarSplitter is PaymentSplitter {
  constructor(address[] memory payees, uint256[] memory shares_)
    PaymentSplitter(payees, shares_)
  {}

  function bar() external pure returns (string memory) {
    return "bar";
  }

  /**
   * @notice Allow eth transfers to this contract
   */
  fallback() external payable {}
}

