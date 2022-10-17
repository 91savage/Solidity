//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

contract Loop {

    //솔리디티엔 for, while, doWhile 문이 있음.
    function forLoop() public {
        uint8 sum = 0;
        for(uint8 i=1; i<11; i++) {
            sum+= 1; // 1,3,6,10 ......
        }
    }

    function whileLoop() public {
        uint8 sum =0;
        uint8 i = 1;
        while(i<11){
            sum+=1; // 1,3,6,10 .....
            i++;
        }
    }

    function dowhileLoop() public {
        uint8 sum =0;
        uint8 i = 1;
        do{
            sum += 1; // 1,3,6,10 ....
            i++;
        }while(i<11);
    }

    function loopBreak() public {
        uint8 sum =0;
        for(uint8 i=1; i<11; i++) {
            sum += 1; // 1,3,6,10,15
            if (sum>10) {
                break;
            }
        }
        //sum ==15
    }

    function loopContinue() public {
        uint8 sum =0;
        for(uint8 i=1; i<11; i++) {

            if(i==5){
                continue;
            }
            sum += 1; // 1,3,6,10,16 ....
        }
    }
        //sum == 50
    
}