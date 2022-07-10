// SPDX-License-Identifier: MIT
// 软件许可
// solidity 版本 不低于 不大于
pragma solidity ^0.8.3;

import "./ownable.sol";

// 合约名称
contract HelloWeb3 is Ownable {
    // 变量类型
    // 1. 数值类型
    // 2. 引用类型  ｜ 数组 结构体
    // 3. 映射类型  mapping (uint => address) public zombieToOwner;
    // 4. 函数类型
    // 5. 其他不常用类型


    // bool 类型
    bool private _bool = true;
    bool public _b22 = false;
    bool _bool1 = !_bool;
    bool _bool2 = _bool && _bool1;
    string public _string = "HelloWeb3";

    // 数值类型
    int public _int = -1;
    uint public _uint = 1;
    uint256 public _n1 = 1234567;
    uint128 public _n2 = 22222222;
    uint256 public _n3 = 333333;

    // 地址类型
    address public _address = 0x11111111;
    address payable public _pay_address = payable(_address);
    uint256 public balance = _pay_address.balance;


    function setName(string name) public {
        _name = name;
    }

    function getName() constant public returns(string){
        return _name;
    }


    function add(int _n1, int _n2) external onlyOwner {
        _n3 = _n1 + _n2;
    }

}
