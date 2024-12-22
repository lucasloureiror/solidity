// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract FavoriteRecords {
    string[9] records = [
        "Thriller",
        "Back in Black",
        "The Bodyguard",
        "The Dark Side of the Moon",
        "Their Greatest Hits (1971-1975)",
        "Hotel California",
        "Come On Over",
        "Rumours",
        "Saturday Night Fever"
    ];
    mapping(string => bool) public approvedRecords;
    mapping (address => mapping(string => bool)) userFavorites;
    error NotApproved(string albumName);

    constructor(){
        for (uint8 i = 0; i < records.length; i++) 
        {
            approvedRecords[records[i]] = true;
        }
    }

    function getApprovedRecords() external view returns (string[9] memory){
        return records;
    }

    function addRecord(string memory _albumName) external{
        if (approvedRecords[_albumName] == true){
            userFavorites[msg.sender][_albumName] = true;
        } else {
            revert NotApproved(_albumName);
        }
    }

    function getUsersFavorites(address _address) external view returns (string[] memory){
        
        uint8 count;
        for (uint8 i = 0; i < records.length; i++) 
        {
            if(userFavorites[_address][records[i]] == true){
                count++;
            }
        }
        string[] memory result = new string[](count);

        uint8 index;
        for (uint8 i = 0; i < records.length; i++) 
        {
            if(userFavorites[_address][records[i]] == true){
                result[index] = records[i];
                index++;
            }
        }
        return result;
    }

    function resetUserFavorites() external{  
       for (uint8 i = 0; i < records.length; i++) {
        if (userFavorites[msg.sender][records[i]] == true){
            userFavorites[msg.sender][records[i]] = false;
        }
       }
    }
}