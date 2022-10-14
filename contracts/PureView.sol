// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

contract PureView {
    uint private data =255;
    
    //state 값을 조회하는 경우
    function getData() public view returns(uint8) {
        return data;
    }
    // state 값을 조회하지 않는 경우
    function getPureData() public pure returns(uint8) {
        uint8 temp_Data =9;
        return temp_Data;
    }

}