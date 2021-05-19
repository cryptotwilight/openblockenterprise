pragma solidity >0.7.0 <=0.9.0;
/** 
 * The role manager interface is for use within a dApp to enable dynamic role support and activity reporting. 
 */ 
interface IRoleManager { 
    
    /**
     * This function allows a user to execute the code that follows it. It returns a simple boolean 
     */ 
    function isAllowed(string memory _role, address _address) external view returns (bool _isAllowed);
    
    /**
     * This function allows a user to execute the code that follows. If the user is not allowed then this operation will revert
     */ 
    function isAllowedRevert(string memory _role, address _address) external view returns (bool _isAllowed);
    
    /**
     * This function returns whether a given address is barred from participating as the given role. 
     * It returns a simple boolean
     */ 
    function isBarred(string memory _role, address _address) external view returns (bool _isBarred);
    
    /**
     * This function returns whether a given address is barred from participating as the given role. 
     * It will revert if the user is barred. 
     */ 
    function isBarredRevert(string memory _role, address _address) external view returns (bool _isBarred);
} 