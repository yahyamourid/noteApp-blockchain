require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
  networks:{
     sepolia:{
      url:'https://eth-sepolia.g.alchemy.com/v2/Dr7cYVz7XoHlpBqYB9AjHRWOz-6ER8LN',
      accounts:[
        'ae1f6c4c8b1d501663d4a25d58d6bc5733e7e21830214ee5ec3c4cc4df46039d'
      ]
     }
  }
};
