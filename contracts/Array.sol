//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 < 0.9.0;

contract Array {

    //[1,2,3,4]
    int[] public intList = [1,2,3,4];
    int[3] public int3List[1,2,3];

    //[1,2,3,4] - > [1,2,3,4,5]

    intList.push(5);
    int public lastData = intList.pop(); //5
    //[1,2,3,4]
    int public secondData = intList[1]; // 2

    delete intList[1]; // [1,0,3,4];  데이터 값을 초기화 해서 0이 됨 

    struct Product {
        string name; 
        uint price;
    }
    Product[] public ProductList;
    ProductList.push(mainProduct)
}