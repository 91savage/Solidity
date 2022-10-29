// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;


//Require와의 차이점은 error문구를 넣었느냐 안넣었느냐
contract Assert{
    function order() external payable{
        assert(msg.value != 0); // Error를 발생시키고  Transaction으로 인해 지금까지 변경 된 state 를 rollback
        orderList[msg.sender] = msg.value;
    }
}
