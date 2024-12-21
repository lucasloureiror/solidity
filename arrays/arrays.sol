// SPDX-License-Identifier: MIT
pragma solidity >=0.8.28;

contract Arrays{
    //Array is a reference type, which requires storage, memory or calldata keyword that determines the data location and how long it will persist.
    //Storage: Permanent storage inside the contract and are always dyamic
    //Memory: temporary variables that only exist within the scope in which they are created.
    //Calldata: is where function arguments are stored and it's non modifiable.

    uint8 arrayLen;
    uint8[] array;

    function returnArrayValue (uint8 _position) external view returns(bool sucessfull, uint8 result){
        if (_checkArrayLen(_position)){
            if (array[_position - 1] > 0){
              return (true, array[_position - 1]);
            }
        }
        return (false, 0);
    }
    function addToArray (uint8 _number) external returns (bool sucessfull){
        if (_number > 0){
          array.push(_number);
          arrayLen += 1;
          return true;
        }
        return false;
    }
    function removeFromArray (uint8 _position) external returns (bool sucessfull){

        if (_checkArrayLen(_position)){
         delete array[_position -1];
         return true;
        }
        return false;
    }
    function updateToArray (uint8 _position, uint8 _value) external returns (bool result){
        if (_checkArrayLen(_position) && (_value > 0)){
            array[_position - 1] = _value;
            return true;
        }
        return false;
    }
    function returnArrayLen() external view returns (uint8){
        return arrayLen;
    }
    function returnArray() external view returns (uint8[] memory){
        return array;
    }
    function _checkArrayLen(uint8 _position ) internal view returns (bool){
         if (_position - 1 > (arrayLen)){
            return false;
        }
        return true;
    }
}