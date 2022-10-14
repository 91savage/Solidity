//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

contract Address {
    //address public failUser = 0X915812F00f2cADC27739f6966dd39C4DAD2Efed9; // 소문자
    address public user = 0x915812F00f2cAdC27739f6966dd39C4dad2Efed9;  // 대소문자 구별
}

    address payable public payable_user = payable(user);

    function sendEth() public payable {
        user.transfer(1000000000000000000);
        
    }

    function getBalance() public view returns(uint) {
        return user.balance; // 10000000000000;
    }
