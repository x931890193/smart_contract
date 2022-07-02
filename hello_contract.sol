// SPDX-License-Identifier: MIT
// 软件许可
// solidity 版本 不低于 不大于
pragma solidity ^0.8.3;

// 合约名称
contract HelloWeb3 {
    string public _string = "HelloWeb3";

    function setName(string name) public {
        _name = name;
    }

    function getName() constant public returns(string){
        return _name;
    }
}
