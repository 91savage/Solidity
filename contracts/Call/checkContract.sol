//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

// 주소가 컨트랙트인지 eoa인지 체크하기
contract EthTransfer{

    event Trnasfer();
    function isContract(address _addr) private returns(bool isContract){

        uint32 size;
        assembly{
            size := extcodesize(_addr)
        }
        return (size > 0); // CA, EOA 인지
    }

    // transfer, send , call  이더리움을 전송하는 명령어
    // adddress(to).transfer, address(to).send, address(to).call

    function sendTransfer(address payable to) public payable{
        to.transfer(msg.value);
    }
    //send는 트랜잭션이 성공했는지 실패했는지 리턴해줌
    function sendSend(address payable to) public payable{
        bool result = to.send(msg.value);
        if(result == true){
            emit Trnasfer();
        }else{
            revert();
        }
    }

    function call(address payable to) public payable{
        (bool result, bytes memory data) = to.call{value:msg.value }("");
        if(result == true){
            emit Trnasfer();
        }else{
            revert();
        }
    }
}