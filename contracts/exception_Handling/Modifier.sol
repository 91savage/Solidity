// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;


contract Modifier{
    
    modifier checkMinPrice(){
        require(msg.value > minPrice); // 조건 성립 체크
        _;
    }
    uint public minPrice = 10000;
    mapping (address => int) public orderList;

    function test1() public payable checkMinPrice {
        orderList[msg.sender] = msg.value;
    }

    function test2() public payable checkMinPrice {
        orderList[msg.sender] = msg.value;
    }
}