// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract MyToken {

    // Public variables to store the details about the coin
    string public name = "MyToken";
    string public symbol = "MTK";
    uint256 public totalSupply;

    // Mapping to store the balance of each address
    mapping(address => uint256) public balanceOf;

    // Mint function to increase the total supply and balance of the specified address
    function mint(address _to, uint256 _value) public {
        totalSupply += _value;
        balanceOf[_to] += _value;
    }

    // Burn function to decrease the total supply and balance of the specified address
    function burn(address _from, uint256 _value) public {
        if (balanceOf[_from] >= _value) {
            totalSupply -= _value;
            balanceOf[_from] -= _value;
        }
    }
}