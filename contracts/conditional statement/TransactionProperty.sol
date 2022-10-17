//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

contract TransactionProperty {

    uint public msg1 = gasleft(); // 실행 후 남은 가스 양체크 , 이 트랜잭션이 계속 진행 될 지 체크
    bytes public msg2 = msg.data; // transaction에 나오는 input data
    address public msg3 = msg.sender; // 트랜잭션 요청한 사람 정보
    bytes4 public msg4 = msg.sig; // 함수로 호출한 값을 bytecode 로 바꾼 값
    uint public msg5 = msg.value; // 사용자가 전송 한 이더리움의 크기


    function checkValue() external payable{  //msg.value를 쓸려면 payable 을 써줘야함
        uint value = msg.value;
    }

    
}
