// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract WavePortal {
    //uint256 totalWaves;
    mapping(address => uint256) waveMap;

    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function wave() public {
        //totalWaves += 1;
        console.log("%s has waved!", msg.sender);
        waveMap[msg.sender] += 1;
    }

    function getTotalWaves() public view returns (uint256) {
        uint256 totalWaves = waveMap[msg.sender];
        console.log("%s have %d total waves!", msg.sender, totalWaves);
        return totalWaves;
    }
}
