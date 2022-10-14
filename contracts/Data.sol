// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

contract DataType {

    bool public data1 = true;
    int public data2 = -10;
    uint public data3 = 10;
    // int 양수 음수 다 가능 , uint 양수 만 가능

    uint256 public data4 = 100000000000000000000;
    int256 public data5 = -100000000000000000000;

    uint8 public data6 = 100; // 1 ~255
    int8 public data7 = -100; // -128 ~ 127

    string public data8= " fastcampus";
    bytes public data9 = "fastcampus";
    bytes20 public data10 =  "hex~~";
    bytes32 public data11 = "hex~~";

    address public data12 = "0x915812F00f2cAdC27739f6966dd39C4dad2Efed9";
}