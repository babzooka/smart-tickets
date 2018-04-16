
pragma solidity ^0.4.0; contract FlightTicket{
         address public owner;
         uint public stock; // UNDEFINED INTEGER (uint) ku kena me rujte 
sasin e stokut te biletave
         uint public constant price = 1 ether; // variabel konstante ku 
e kena caktu cmimin e biletes per 1 ETH
         uint public amount; //variabel ku kena me rujte sasin e 
biletave
         uint public total; // variabel ku kena me rujte shumen totale 
te biletave
         
        
         function FlightTicket(uint newAmount)public{//konstruktori
             //inicializojm variablat
             owner = msg.sender; // msg.sender mer adresen e llogaris qe 
e ka deply ket kontrat
             stock = 10;
             amount = newAmount;
             
         }
         //funksion qe teston nese ka bileta per fluturim
         function hasTickets()public constant returns(bool){
             return amount < stock;
         }
         //funksioni qe kalkulton velern totale te biletave
         function buy()public{
             if(hasTickets()){ // shiqojme nese ka bileta
             stock = stock - amount;
             total = amount * (price/10^18);// price e pjestojme me 10 
ne fuqin 18 per me konvertu nga WEI ne ETHER
             }
         }
         
  
}
