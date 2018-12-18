var HDWalletProvider = require("truffle-hdwallet-provider");
var web3 = require("web3");
const MNEMONIC = 'hold senior ordinary bottom toy solution final what term team medal valley';

module.exports = {
  networks: {
    local: {
      host: 'localhost',
      port: 9545,
      gas: 5000000,
      gasPrice: 5e9,
      network_id: '*'
    },
    ropsten: {
      provider: function() {
        return new HDWalletProvider(MNEMONIC, "https://ropsten.infura.io/v3/cc09b4ea45f24de2bb0fd376fa8203fb")
      },
      network_id: 3,
      gas: 4712388,
      gasPrice: web3.utils.toWei("50", "gwei"),   //make sure this gas allocation isn't over 4M, which is the max
    }
  }
};