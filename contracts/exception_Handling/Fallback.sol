// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

contract Fallback{

    uint public data =0;

    constructor() {
        data = 5;
    }

    function order() external payable{
        
        data = 9;

    }

    //ERC20 토큰(100토큰을 전송해야 하는데 100ETH를 전송하는 경우) // 사용자에게 다시 100ETH를 되돌려줌
    fallback() payable external{ // 사용자가 존재하지 않는 함수를 호출 할 때, msg.data가 비어있지 않는 경우
        revert(); // 이더리움 전송을 막을 때.
    } // Proxy Contract

    receive() payable external{ // 함수를 호출을 하지 않고, 사용자가 ETH 를 전송 할 때, msg.data 가 비어있을경우
        revert(); // 이더리움 전송을 막을 때.
    }

}