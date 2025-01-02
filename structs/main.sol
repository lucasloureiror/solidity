// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract Structs{

    struct Favorites {
        uint favorite_number;
        uint8 birthday;
        uint8[] lottery_numbers;
        string favorite_color;
    }
     Favorites[] public userFavorites;

    function addFavorites(uint _favoriteNumber, uint8 _birthday, uint8[] memory _lotteryNumbers, string memory _favoriteColor ) public{
        Favorites memory newFavorites = Favorites(
            _favoriteNumber,
            _birthday,
            _lotteryNumbers,
            _favoriteColor
        );
        userFavorites.push(newFavorites);
    }


}