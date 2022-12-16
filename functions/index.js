const functions = require("firebase-functions");
const axios = require("axios");
const admin = require("firebase-admin");
admin.initializeApp();

exports.getCryptoprice = functions.pubsub.schedule("every 24 hours")
    .onRun((context) => {
      axios.get("https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd")
          .then((res) => {
            const cryptos = res.data;
            for (const crypto of cryptos) {
              const payload = {
                notification: {
                  title: crypto.symbol.toUpperCase() + " - " + crypto.name,
                  body: crypto.currentPrice.toString() + "$US / "+
                  crypto.price_change_percentage_24h.toString(),
                  sound: "default",
                },
              };
              const options = {
                priority: "high",
                timeToLive: 60 * 60 * 24,
              };
              return admin.messaging().sendToTopic(crypto.id, payload, options);
            }
          })
          .catch((err) => {
            console.log("Error: ", err.message);
            return null;
          });
      return null;
    });
