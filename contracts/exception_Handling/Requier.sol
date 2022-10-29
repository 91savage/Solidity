// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;


contract Require{
    function order() external payable{
        require(msg.value != 0,"Msg.value must not be zero");

        // 아래 내용이랑 같음
        
        // if(msg.value != 0){
        //     orderList[msg.sender] = msg.value;
        // }else{
        //     revert("Msg.value must not be zero");
        // }
        
    }
}
