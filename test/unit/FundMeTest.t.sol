// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;
import {Test} from "forge-std/Test.sol";
import {FundMe} from "../../src/FundMe.sol";
import {DeployFundMe} from "../../script/DeployFundMe.s.sol";

contract FundMeTest is Test{
    FundMe fundMe;
    function setUp() external {
        DeployFundMe DeployFundMefundMe = new DeployFundMe();
        (fundMe, ) = DeployFundMefundMe.run();
    }
    function testMinimumDollarFive() public {
        assertEq(fundMe.MINIMUM_USD(), 5e18);
    }
    function testOwnerIsMsgSender() public {
        assertEq(fundMe.getOwner(),msg.sender); 
    }
}