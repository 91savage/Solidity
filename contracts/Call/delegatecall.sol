//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

// 외부 컨트랙트 갖다 쓰기
contract Calculation{
    address public owner;
    uint public value;

    event Transfer();
    function plusData(uint a, uint b) external returns(uint){
        return a+b;
    }

    fallback() external payable{
        owner = msg.sender;
        value = msg.value;
    }
}

contract DelegateCaller{
        address public owner;
        uint public value;

    function isContract(address _addr) private returns(bool isContract){
        uint32 size;
        assembly{
            size := extcodesize(_addr)
        }
        return (size > 0); // CA, EOA 인지
    }

    function callFunc(address payable _address, uint _a, uint _b) public returns(bytes memory){
        bytes memory callFuncBytes = abi.encodeWithSignature("plusData(uint256,uint256)",_a,_b);
        if(isContract(_address)){
            (bool result, bytes memory sum) = _address.delegatecall(callFuncBytes);
            return sum;
        }else{
            revert();
        }
    }
    function callNotExisFunc(address payable _address, uint _a, uint _b) public payable returns(bytes memory){
        bytes memory callFuncBytes = abi.encodeWithSignature("NotExistFunc(uint256,uint256)",_a,_b);
        if(isContract(_address)){
            (bool result, bytes memory sum) = _address.call(callFuncBytes);
            return sum;
        }else{
            revert();
        }
    }
}