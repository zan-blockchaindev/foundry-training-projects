// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {HelloFoundry} from "../src/HelloFoundry.sol";

contract CounterTest is Test {
    HelloFoundry public helloFoundry;

    function setUp() public {
        helloFoundry = new HelloFoundry();
    }

    function test_hello() public view {
        assertEq(helloFoundry.hello(), "Hello Foundry!");
    }
}
