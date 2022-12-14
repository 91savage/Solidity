//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

contract Car{
    string private type_; // 타입
    uint8 private door; // 문 갯수

    function getDoor() public view returns(uint8) {
        return door;
    }
}

contract Benz is Car{
    string private model; // 모델
    address private owner; // 소유자

    function getModel() public view returns(string memory){
        return model;
    }
}

contract Audi is Car{
    string private model; // 모델
    address private owner; // 소유자

    function getModel() public view returns(string memory){
        return model;
    }
}