require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",

  networks: {
    sepolia: {
      url: "https://eth-sepolia.g.alchemy.com/v2/rjPcfyLJX4u64zzXa6xSxB-v2ouNz9dV",
      accounts: ["5cdf05bc61362b11c52c2426a7ca678f02a788e9a8d612cd482205e131e1e79e"],
    },
  },
};
