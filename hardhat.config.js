/** @type import('hardhat/config').HardhatUserConfig */

require("hardhat-deploy");
require("@tokamak-network/tokamak-uniswap-v3-deploy");
require("dotenv").config();

module.exports = {
  solidity: "0.7.3",
  defaultNetwork: "hardhat",
  networks: {
    hardhat: {},
    buildbear: {
      url: process.env.BUILDBEAR_RPC,
      accounts: [process.env.PRIVATE_KEY],
    },
  },
};
