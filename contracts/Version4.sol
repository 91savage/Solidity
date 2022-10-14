// SPDX-License-Identifier : MIT
pragma solidity >=0.4.0 < 0.5.0;

contract Function4 {
    uint8 private data = 255; // 0 ~ 255 + 1    // 4버전에서 오버플로우 공격을 막기 위해서 업그레이드 됨

    function setData() public {
        data += 1;
    }

    function getData() public returns(uint8) {
        return data;
    }
}