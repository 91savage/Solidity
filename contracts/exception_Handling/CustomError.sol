// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

error ZeroCheckError(); // 컨트랙트 밖에다가 선언하든, 안에다가 선언하든 상관 없음.

contract Require{
    function order() external payable{
        
        if(msg.value < minPrice){
            revert ZeroCheckError(); // error 발생, state 롤백
        }   

        orderList[msg.sender] = msg.value;
    }

    function order2() external payable{
        
        if(msg.value < minPrice){
            revert ZeroCheckError(); // error 발생, state 롤백
        }   

        orderList[msg.sender] = msg.value;
    }
}