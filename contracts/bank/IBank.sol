pragma solidity >0.7.0 <=0.9.0;

/** 
 * The IBank interface provides a way for a dApp / blockchain business to manage it's funds on chain without sending the funds 
 * to a wallet or keeping them in the operational contract. This interface is for single currency support. 
 * NOTE: currency contract is set once
 */ 
interface IBank { 
    
    /**
     * this will deposit the given amount into the bank and issue a deposit reference 
     */ 
    function deposit(uint256 _amount) payable external returns (uint256 _depositReference);
    
    /** 
     * this will withdraw the given amount from the bank and issue a withdrawal reference 
     */ 
    function withdraw(uint256 _amount, address _payoutAddress) external returns (uint256 _withdrawalReference);
    
    /**
     * this will return the ERC20 currency that this bank supports. It will return address(0) for ETH 
     */ 
    function getCurrencyContract() external view returns (address _currencyContract);

    /**
     * this will find the deposit linked to the given deposit reference 
     */ 
    function findDeposit(uint256 _depositReference) external returns (address _payer, uint256 _date, uint256 _amount); 

    /**
     * this will find the withdrawal linked to the given withdrawal reference 
     */ 
    function findWithDrawal(uint256 _withdrawalReference) external returns (address _withdrawer, uint256 _date, uint256 _amount, address _payoutAddress );
    
    /**
     * this will return the balance of the bank at the given point in time 
     */
    function getBankBalance() external returns (uint256 _balance, uint256 _date);

} 
