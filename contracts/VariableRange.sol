//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

contract VariableRange {
    uint private data = 10;

    function getData() public view returns(uint){
        return data;
    }

    function getData2() public pure returns(uint){
        uint data = 5;
        return data;
    }
}