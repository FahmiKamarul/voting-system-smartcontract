// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Voting {
    VotingState public state;
    enum VotingState {
        OPEN,
        CALCULATING
    }
    mapping(uint256 voterId => Voter voter) voters;
    mapping(uint256 candidateId => Candidate candidate) candidates;
    mapping(uint256 voterId => Candidate candidate) votes;
    uint public candidateCount;
    uint public voterCount;

    struct Voter {
        uint256 voterId;
        uint voteCount;
    }

    struct Candidate {
        uint256 candidateId;
        uint voteCount;
    }

    constructor() {
        state = VotingState.OPEN;
        candidateCount = 0;
        voterCount = 0;
    }

    function createCandidate(uint256 _candidateId) public {
        // TODO: implement
    }

    function createVoter(uint256 _voterId) public {
        // TODO: implement
    }

    function getCandidate(
        uint256 _candidateId
    ) public view returns (Candidate memory) {}

    function vote(uint256 _candidateId, uint256 _voterId) public {
        // TODO: implement
    }
}
