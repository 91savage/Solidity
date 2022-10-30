//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

contract Car{
    string private type_; // 타입
    uint8 private door; // 문 갯수

    constructor(string memory _type, uint8 _door){
        type_ = _type;
        door = _door;
    }
    function getDoor() public view returns(uint8) {
        return door;
    }
}

contract Benz is Car("suv",4){
    string private model; // 모델
    address private owner; // 소유자
    constructor(string memory _model){
        model = _model;
        owner = msg.sender;
    }

    function getModel() public view returns(string memory){
        return model;
    }
}
