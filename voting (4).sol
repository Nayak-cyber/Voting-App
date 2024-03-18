// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//byGunjanNayak

contract voting{
    string[5] public candidates;
    mapping (string => uint256) private candidatevotes;
    event votecast(string candidate, uint256 candidatevotes);
    constructor(){
        candidates[0]="John";
        candidates[1]="Gunjan";
        candidates[2]="Ajay";
        candidates[3]="Gowtham";
        candidates[4]="Mahima";
    }

    function vote(uint8 candidateindex) public {
        require(candidateindex<5,"Invalid candidate index");

        string memory selectedCamdidate = candidates[candidateindex];
        candidatevotes[selectedCamdidate]++;
        emit votecast(selectedCamdidate, candidatevotes[selectedCamdidate]);
    }
    function getvotes(string memory candidate) public view returns(uint256){
        return candidatevotes[candidate];
    }
    function getcandidateName() public view returns (string[5] memory){
        return candidates;
    }
}