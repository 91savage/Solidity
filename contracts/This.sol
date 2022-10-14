//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

contract This{
    uint public data = 10;

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function externalFunc() external {
        data=15;
    }

    function internalFunc() internal{
        this.externalFunc();
    }
}