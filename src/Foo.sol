// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {BarSplitter} from "#/Bar.sol";
import {Baz} from "~/Baz.sol";

abstract contract Foo is BarSplitter {
  Baz target;
}
