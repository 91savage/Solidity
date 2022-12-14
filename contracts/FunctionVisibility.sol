// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

contract FunctionVisibility {
    
    uint8 private data = 255;
    uint8 public data = 255;

    // 외부 공개 x . 상속 x . 내부에서 o
    function setData(uint8 _data) private {
        data = _data;
    }   
    // 외부 공개 x . 상속 o . 내부에서 o
    function setData(uint8 _data) internal {
        data = _data;
    }   
    // 외부 공개 o .상속 o . 내부에서  o
    function setData(uint8 _data) public {
        data = _data;
    // 외부 공개  o . 상속 x . 내부에서 x 
    }   
    function setData(uint8 _data) external {
        data = _data;
    }   

}