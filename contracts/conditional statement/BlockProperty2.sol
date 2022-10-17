//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

contract BlockPropertyNew {
        //random 값 찍기
        function generateRandom() public view returns(uint8) {
            uint8 number = uint8(uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty)))%251); // keccak256 해쉬 알고리즘  // 251보다 작은 값만 나오게
            return number;
        }
}
