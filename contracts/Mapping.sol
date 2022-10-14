//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

contract Mapping {
    //ERC20 잔액 관리 할 때 많이 씀
    mapping(address => int) public balance;
    // key - value
    // key 값이 중복이 발생하지 x

    balance["0x915812F00f2cAdC27739f6966dd39C4dad2Efed9"] = 1000;
    uint public myBalance = balance["0x915812F00f2cAdC27739f6966dd39C4dad2Efed9"]; /1000

    balance["0x915812F00f2cAdC27739f6966dd39C4dad2Efed9"]  = 10;
    uint public myBalance = balance["0x915812F00f2cAdC27739f6966dd39C4dad2Efed9"]; / 10 

    balance["0x915812F00f2cAdC27739f6966dd39C4dad2Efed9"]  = 10;

}
