pragma solidity ^0.4.24;

import "./Sanauth_New.sol";

contract Airdrop {

    address public owner;
    Sanauth_New public mytoken;

    constructor(address tokenAddress) public {
        owner = msg.sender;
        mytoken = Sanauth_New(tokenAddress);
    }

    modifier onlyOwner()  {
        require(msg.sender == owner,"Only owner is allowed to call this.");
        _;
    }

    function transferOwnership(address newOwner) public onlyOwner {

        if (newOwner != address(0)) {
            owner = newOwner;
        }
    }

    function airdrop (address airdropAddress, address[] airDropDesinationAddress, uint[] amounts) 
        public onlyOwner{

        for( uint i = 0 ; i < airDropDesinationAddress.length ; i++ ) {
            //ERC20Interface(contractObj).transferFrom(tokenRepo, airDropDesinationAddress[i], amounts[i]);
            mytoken.transferFrom(airdropAddress, airDropDesinationAddress[i], amounts[i]);
            //mytoken.transfer(airDropDesinationAddress[i], amounts[i]);
        }
    }
}