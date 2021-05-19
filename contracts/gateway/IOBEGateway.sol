pragma solidity >0.7.0 <=0.9.0;

/**
 * This interface returns the latest registered component address for use in your dApp
 */ 
interface IOBEGateway {
    
    function getComponentAddress(string memory _componentName) external view returns (address _componentAddress, uint256 _version);

}