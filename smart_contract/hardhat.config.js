//https://eth-ropsten.alchemyapi.io/v2/tApCQxrFda414mgqlfqZeEWxkoO_qED4

require('@nomiclabs/hardhat-waffle');
module.exports={
  solidity:'0.8.0',
  networks:{
    ropsten:{
      url:'https://eth-ropsten.alchemyapi.io/v2/tApCQxrFda414mgqlfqZeEWxkoO_qED4',
      accounts:['9d089c2a375b64f55a86d50224c16095f1c971a2f4f2dfb44261f19b1620ecf9']
    }
  }
}
