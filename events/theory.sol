// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.28;

contract EventExample{

    enum EventType {OPENING, CLOSING}

    //Events remains as logs in the blockchain
    event Campaign_Event(
        EventType indexed eventType, //Indexed variables inside events make it easier to search for events in topics
        uint timestap,
        address caller
    );

    function beginCampaign() public {
        EventType operation = EventType.OPENING;
        uint timestamp = block.timestamp;
        address caller = msg.sender;
        emit Campaign_Event(operation, timestamp, caller);
    }

    function endCampaign() public {
        EventType operation = EventType.CLOSING;
        uint timestamp = block.timestamp;
        address caller = msg.sender;
        emit Campaign_Event(operation, timestamp, caller);
    }
}