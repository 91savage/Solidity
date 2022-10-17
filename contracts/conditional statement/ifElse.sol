//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

contract IfElse {

    uint public minialPrice = 1000; // 1000원 이상 만 구매 가능
    uint public maxPrice = 1000000; // 100만원 이상 구매 할 수없게 

    mapping (int => address) public owner;  // 제품번호를 사용자애게 넘겨준다

    function conditional(uint ask_price) public {
        if(ask_price > minialPrice) {
           owner[1] = 0x890ab9bD8947FeBaa369129bE757a8CdF9007737;
        }else {
            //fail
            revert(); // 실패 했다는것을 보여줌
        }

    }

    function conditional2(uint ask_price) public {
        if(ask_price > minialPrice) {
           owner[1] = 0x890ab9bD8947FeBaa369129bE757a8CdF9007737;
        }else if(ask_price > maxPrice){
            revert();
        }else {
            //fail
            revert(); // 실패 했다는것을 보여줌
        }
    }
}