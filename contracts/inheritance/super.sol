//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;


// virtual은 부모, override는 자식 에 쓰게 되면 동일한 명의 함수 사용 가능

contract Car{
    string private type_; // 타입
    uint8 private door; // 문 갯수
    uint private price;

    constructor(string memory _type, uint8 _door, uint _price){
        type_ = _type;
        door = _door;
        price = _price;
    }
    function getDoor() public view returns(uint8) {
        return door;
    }
    function getPrice() public view virtual returns(uint){ // virtual은 부모
        return price;
    }
}

contract Benz is Car("suv",4, 10000){
    string private model; // 모델
    address private owner; // 소유자
    uint private premium;
    constructor(string memory _model, uint _premium){
        model = _model;
        owner = msg.sender;
        premium = _premium;
    }

    function getModel() public view returns(string memory){
        return model;
    }
    function getPrice() public view override returns(uint){ //override는 자식 
        return premium; // 부모에서 상속받은 10000 이아닌 입력값이 출력 됨.
    }

    function getCarPrice() public view returns(uint){ //부모의 getPrice를 호출함.
        return super.getPrice();
    }
}
