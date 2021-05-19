pragma solidity >0.7.0 <=0.9.0;

/**
 * The Pricing Matrix interface provides a simple way for dApps to dynamic on chain item pricing 
 */ 
interface IPricingMatrix { 
    
    /**
     * this returns the price of the item 
     */ 
    function getPrice(string  memory _item) external view returns (uint256 _price);
    
    /**
     * this returns the currency contract of this pricing matrix
     */ 
    function getCurrencyContract() external view returns(address _currencyContract);
    
}