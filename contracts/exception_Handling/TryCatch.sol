// SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

contract Math{
    function plusData(uint a, uint b) external returns(uint)
    return a + b;
}

// 외부에 있는 함수를 호출 할 때 씀
contract TryCatch{
    Math math = new Math();
    address payable temp_address = 0x890ab9bD8947FeBaa369129bE757a8CdF9007737;
    function callOtherContract(address to) external{

        try math.plusData(6,4) returns(uint result){
            (temp_address).transfer(result);
        }catch{
            revert();
        }
    }
}
