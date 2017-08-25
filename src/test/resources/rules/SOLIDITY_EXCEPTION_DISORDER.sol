pragma solidity ^0.4.11;

contract SolidityUncheckedSend {
    function unseatKing(address a, uint w) {
        a.call.value(w);//
        a.send(w);//
        a.delegatecall(w);//
    }
    function delegatecallSetN(address _e, uint _n) {
        if (!_e.delegatecall(bytes(sha3("setN(uint256)"), u))) throw;
    }
    function delegatecallSetN(address _e, uint _n) {
        if (!_e.call(bytes(sha3("setN(uint256)"), u))) throw;
    }
    function delegatecallSetN(address _e, uint _n) {
        if (!_e.send(bytes(sha3("setN(uint256)"), u))) throw;
    }
}


