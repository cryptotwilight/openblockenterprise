pragma solidity >0.7.0 <=0.9.0;

/**
 * This interface represents the security manager that is integrated into a project's smart contracts to provide 
 * a central point from which functionality can be enabled or disabled in a crisis situation. 
 */ 
interface ISecurityManager { 
    
    /** 
     * This operation returns whether the caller can execute the given action as per the system 
     * This is mainly for "soft" security
     */ 
    function isAllowed() external view returns (bool _isAllowed);
    
    /**
     * this operation returns whether  the caller can execute the given action as per the system 
     * this operation will revert. This is mainly for "hard" security
     */ 
    function isAllowedRevert() external view returns (bool _isAllowed);

} 

