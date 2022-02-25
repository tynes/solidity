pragma solidity ^0.8.0;

contract TStore {
    function frob() public returns (bytes32) {
        bytes32 ret;
        assembly {
            tstore(0, 0xffff)
            ret := tload(0)
        }
        return ret;
    }
}
