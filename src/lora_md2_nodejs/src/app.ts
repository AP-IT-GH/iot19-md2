import { data, application } from "ttn";
import { INode } from "./model/INode";
import admin from "firebase-admin";
import { IBox } from "./model/IBox";
const serviceAccount = require("../medicaldeliverybox-firebase-key.json");
const appID = "medicaldelivery";
const accessKey = "ttn-account-v2.FgSffq0P38G9VkSURcH2_qsixGEyH_7ByybU4saDDII";
admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
  databaseURL: "https://medicaldeliverybox.firebaseio.com"
});
const db = admin.database();
//const application = application(appID, accessKey)
//db references
var boxesRef = db.ref("boxes/");
var deliveriesRef = db.ref("deliveries/");
var boxDataRef = db.ref("boxData/");

// discover handler and open mqtt connection
console.log("listening");
data(appID, accessKey)
  .then(function (client) {
    client.on("uplink", function (devID: any, payload: any) {
      console.log("Received uplink from ", devID);
      console.log(payload);
    });
  })
  .catch(function (err) {
    console.error(err);
    process.exit(1);
  });

boxesRef.on("child_changed", function (snapshot) {
  let box: IBox = snapshot.val();
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
application(appID, accessKey)
  .then(function (client) {
    client.devices().then((nodes: INode[]) => {
      nodes.forEach((node) => {
        console.log(node.devId);
      });
    })
  });