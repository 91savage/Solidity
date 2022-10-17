//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

contract TransactionProperty2 {

    // 사용자가 주문한 내역을 보고 싶을 때, 요청을 보낸 사용자의 주소를 저장하고 싶을 때

    mapping(address => uint) private orderList;

    function newOrderList() external payable {
        orderList[msg.sender] = msg.value;
    }
    bytes4 private checkFunction;

    function newCheckFunction(address sender, uint price) external returns(bool) {
        bytes selector = bytes4(keccak256("newOrderList()"));

        if(selector == msg.sig) {
            return true;
        }
    }



}
