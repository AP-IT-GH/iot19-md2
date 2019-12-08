"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const ttn_1 = require("ttn");
const firebase_admin_1 = __importDefault(require("firebase-admin"));
const serviceAccount = require("../medicaldeliverybox-firebase-key.json");
const appID = "medicaldelivery";
const accessKey = "ttn-account-v2.FgSffq0P38G9VkSURcH2_qsixGEyH_7ByybU4saDDII";
firebase_admin_1.default.initializeApp({
    credential: firebase_admin_1.default.credential.cert(serviceAccount),
    databaseURL: "https://medicaldeliverybox.firebaseio.com"
});
const db = firebase_admin_1.default.database();
//const application = application(appID, accessKey)
//db refs
var boxesRef = db.ref("boxes/");
var deliveriesRef = db.ref("deliveries/");
var boxDataRef = db.ref("boxData/");
// discover handler and open mqtt connection
console.log("listening");
ttn_1.data(appID, accessKey)
    .then(function (client) {
    client.on("uplink", function (devID, payload) {
        console.log("Received uplink from ", devID);
        console.log(payload);
    });
})
    .catch(function (err) {
    console.error(err);
    process.exit(1);
});
boxesRef.on("child_changed", function (snapshot) {
    let box = snapshot.val();
    console.log("--------------------------VALUES CHANGED IN BOX--------------------------------");
    console.log(box);
    //console.log(box.);
});
// boxesRef
//   .child("box3")
//   .set({ id: "box3", content: "jodium 5" })
//   .then(() => {
//     boxesRef.once("value", data => console.log(data.val()));
//   })
//   .catch(error => console.log(error));
// discover handler and open application manager client
ttn_1.application(appID, accessKey)
    .then(function (client) {
    client.devices().then((nodes) => {
        nodes.forEach((node) => {
            console.log(node.devId);
        });
    });
});
//# sourceMappingURL=app.js.map