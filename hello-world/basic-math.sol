// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract BasicMath {

    function Adder (uint _a, uint _b ) external pure returns (uint, bool){

        unchecked{
          uint sum = _a + _b;
          if (sum <= _a || sum <= _b){
            return (0, true);
          }
          return (sum, false);
        }
    }

    function Subtractor (uint _a, uint _b) external pure returns (uint, bool){
        unchecked{
            uint difference = _a - _b;
            if (_a < _b){
                return (0, true);
            }
        return (difference, false);
        }
    }

}