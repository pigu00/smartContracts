pragma solidity ^0.5.0;

contract MyContract {
    
    address[16] public perrosAdoptados;

    function adoptar(uint perroIndex) public returns (bool){

        require( perroIndex >= 0 && perroIndex <= 15 , "Fuera de rango" );
        
        bool adoptarConExito = true;

        if ( perrosAdoptados[perroIndex] == address(0) ){
            perrosAdoptados[perroIndex] = msg.sender;
        } else {
            adoptarConExito = false;
        }
            
        return adoptarConExito;

    }
        
    function getPerrosAdoptados () public returns(address[16]){

    }

}