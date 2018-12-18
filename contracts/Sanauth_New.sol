pragma solidity ^0.4.24;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
//import "../node_modules/zos-lib/contracts/Initializable.sol";
//import "../node_modules/openzeppelin-eth/contracts/token/ERC20/ERC20.sol";
//import "../node_modules/openzeppelin-eth/contracts/token/ERC20/ERC20Detailed.sol";


contract Sanauth_New is StandardToken {

    string public constant name = "SANAUTH"; //
    string public constant symbol = "SANAUTH"; //
    uint8 public constant decimals = 18; //

   // new variable are added for change a,b,c 
    uint8 public constant a = 10;
    uint8 public constant b = 20;

    uint8 public c;

    uint256 public constant INITIAL_SUPPLY = 2000000000 * (10 ** uint256(decimals));
    uint256 public constant CROWDSALE_ALLOWANCE =  1000000000 * (10 ** uint256(decimals));
    uint256 public constant ADMIN_ALLOWANCE     =  1000000000 * (10 ** uint256(decimals));

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */

    function initialize(address _admin) public {
        require(msg.sender != _admin, "Owner and admin cannot be the same");

        totalSupply_ = INITIAL_SUPPLY;
        // crowdSaleAllowance = CROWDSALE_ALLOWANCE;
        // adminAllowance = ADMIN_ALLOWANCE;

        // mint all tokens
        balances[msg.sender] = totalSupply_;
        emit Transfer(address(0x0), msg.sender, INITIAL_SUPPLY);
    }

    // Adding new functionality 

    function add() public returns (uint8) {
        c = a+b;
        return c;
    }

}
