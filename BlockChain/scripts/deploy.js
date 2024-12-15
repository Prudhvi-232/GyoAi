const { ethers } = require("hardhat");

async function main() {
  const RNP = await ethers.deployContract("RNPToken");
  await RNP.waitForDeployment();


  console.log("RNP deployed to:", await RNP.getAddress());
}
          
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

//0x595f85c87DCBB49379C695C82F83B3F24A304D70
//0x1C2347CC4aFf4bA6fA2332BA6C895901A6Fe3579



