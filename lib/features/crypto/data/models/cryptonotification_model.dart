List cryptosNotification = [
  {
    "index": 0,
    "id": "bitcoin",
    "symbol": "btc",
    "name": "Bitcoin",
    "image":
        "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579"
  },
  {
    "index": 1,
    "id": "ethereum",
    "symbol": "eth",
    "name": "Ethereum",
    "image":
        "https://assets.coingecko.com/coins/images/279/large/ethereum.png?1595348880"
  },
  {
    "index": 2,
    "id": "tether",
    "symbol": "usdt",
    "name": "Tether",
    "image":
        "https://assets.coingecko.com/coins/images/325/large/Tether-logo.png?1598003707"
  },
   
];

class CryptoInfo{
  final  bool value;
  final int index;
  CryptoInfo(this.value, this.index);
  
}