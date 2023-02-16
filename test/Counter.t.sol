// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {

    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(10);
    }

    function testIncrement() public {
        counter.increment();
        assertEq(counter.number(), 11);
        emit log_named_int("number",int256(counter.number()));
    }
    function testSubNumber()public{
        counter.De();
        assertEq(counter.number(),9);
        emit log_named_int("number",int256(counter.number()));
    }
    function testSetNumber() public {
        counter.setNumber(100);
        assertEq(counter.number(), 100);
        emit log_named_int("number",int256(counter.number()));
    }


}
