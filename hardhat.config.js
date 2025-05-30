/** @type import('hardhat/config').HardhatUserConfig */

require("uniswap-v3-deploy-plugin");
require("hardhat-deploy");
require("@tokamak-network/tokamak-uniswap-v3-deploy");
require("dotenv").config();

module.exports = {
  solidity: "0.7.3",
  defaultNetwork: "hardhat",
  networks: {
    hardhat: {},
    buildbear: {
      url: process.env.BUILDBEAR_RPC_URL,
      accounts: { mnemonic: process.env.MNEMONIC, count: 1 },
    },
  },
};
