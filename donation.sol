pragma solidity ^0.4.18;

contract Donate{
struct Donor{
uint amount;
str
ing fName;
string lName;
string email;
string phn;
string addresss;
string note;

}

struct Receiver{
uint receive;
}

uint total=0;
uint rev_total=0;
uint bal=0;
mapping (address => Donor) donors;
address[] public donorAccts;

mapping (address => Receiver) receivers;
address[] public receiverAccts;


function setDonor(address _address, uint _amount, string _fName, string _lName) public {
var donor = donors[_address];

donor.amount = _amount;
donor.fName = _fName;
donor.lName = _lName;
total+=_amount;
donorAccts.push(_address) -1;
//emit (donor.amount);
}

function getDonors() view public returns(address[]) {
return donorAccts;
}

function getDonor(address _address) view public returns (uint, string, string) {
return (donors[_address].amount, donors[_address].fName, donors[_address].lName);
}

function countDonors() view public returns (uint) {
return donorAccts.length;
}

function sum(address _address) view public returns (uint){
/*for (uint i=0;i<donorAccts.length;i++){
total = total+donors[_address].amount;
}*/

bal=total - rev_total;
return bal;
}

function list() view public returns(address[]){

/* for (uint i=0;i<donorAccts.length;i++){
//total = total+donors[_address].amount;

}*/
return donorAccts;
}

function receive(address _address,uint _rev) public returns(uint){

var receiver = receivers[_address];
receiver.receive=_rev;
rev_total+=_rev;


return rev_total;
}


} 
