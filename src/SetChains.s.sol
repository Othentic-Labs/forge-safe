// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.20;
/*______     __      __                              __      __ 
 /      \   /  |    /  |                            /  |    /  |
/$$$$$$  | _$$ |_   $$ |____    ______   _______   _$$ |_   $$/   _______ 
$$ |  $$ |/ $$   |  $$      \  /      \ /       \ / $$   |  /  | /       |
$$ |  $$ |$$$$$$/   $$$$$$$  |/$$$$$$  |$$$$$$$  |$$$$$$/   $$ |/$$$$$$$/ 
$$ |  $$ |  $$ | __ $$ |  $$ |$$    $$ |$$ |  $$ |  $$ | __ $$ |$$ |
$$ \__$$ |  $$ |/  |$$ |  $$ |$$$$$$$$/ $$ |  $$ |  $$ |/  |$$ |$$ \_____ 
$$    $$/   $$  $$/ $$ |  $$ |$$       |$$ |  $$ |  $$  $$/ $$ |$$       |
 $$$$$$/     $$$$/  $$/   $$/  $$$$$$$/ $$/   $$/    $$$$/  $$/  $$$$$$$/
*/

import {Script, StdChains} from "forge-std/Script.sol";

// This script sets chains that are missing in foundry's defualt chains (See: StdChains.sol)
contract SetChains is Script {

  constructor() {

    setChain("mantle", ChainData("Mantle", 5000, ""));
    setChain("mantle_sepolia", ChainData("mantle_sepolia", 5003, ""));
    
    setChain("manta_sepolia", ChainData("manta_sepolia", 3441006, ""));
    setChain("manta", ChainData("manta", 169, ""));
    
    setChain("mode_sepolia", ChainData("mode_sepolia", 919, ""));
    setChain("mode", ChainData("mode", 34443, ""));

    setChain("geth", ChainData("geth", 1337, "http://localhost:8545"));
    setChain("othentic", ChainData("geth", 51001, "http://localhost:10002"));

  }
}