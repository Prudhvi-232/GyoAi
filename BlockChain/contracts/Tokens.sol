// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract RNPToken is ERC20 {
    address public owner;
    mapping(address => uint256) public playerIds;
    mapping(uint256 => address) public players;
    uint256 public nextPlayerId = 1;
    uint256 public tokenDecimals;

    event TokensClaimed(address indexed user, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only contract owner can call this function");
        _;
    }

    constructor() ERC20("RNP", "RNP") {
        owner = msg.sender;
        tokenDecimals = 10 ** uint256(decimals());
    }

    function register() external {
        require(playerIds[msg.sender] == 0, "User has already registered");
        playerIds[msg.sender] = nextPlayerId;
        players[nextPlayerId] = msg.sender;
        nextPlayerId++;
        _mint(msg.sender, 20 * tokenDecimals); // 20 RNP tokens for the user if he signUp into our app
    }

     function lightActivity() external {
        require(playerIds[msg.sender] != 0, "User must register first");
        _mint(msg.sender, 5 * tokenDecimals); //  5 RNP tokens for light activity
        emit TokensClaimed(msg.sender, 5);
    }

    function mediumActivity() external {
        require(playerIds[msg.sender] != 0, "User must register first");
        _mint(msg.sender, 15 * tokenDecimals); //  15 RNP tokens for medium activity
        emit TokensClaimed(msg.sender, 15);
    }

    function heavyActivity() external {
        require(playerIds[msg.sender] != 0, "User must register first");
        _mint(msg.sender, 25 * tokenDecimals); //  25 RNP tokens for heavy activity
        emit TokensClaimed(msg.sender, 25);
    }

    function balanceOfUser() external view returns (uint256) {
        uint256 playerId = playerIds[msg.sender];
        address userAddress = players[playerId];
        return balanceOf(userAddress) / tokenDecimals;
    }

    function transferOwnership(address _newOwner) external onlyOwner {
        owner = _newOwner;
    }
}
