import * as firebase from "firebase";
import "firebase/firestore";
import "@firebase/auth";

const firebaseConfig = {
  apiKey: "API_KEY",
  authDomain: "AUTH_DOMAIN",
  projectId: "PROJECT_ID",
  storageBucket: "STORAGE_BUCKET",
  messagingSenderId: "MESSAGING_SENDERS_ID",
  appId: "APP_ID",
  measurementId: "MEASUREMENT_ID",
};

firebase.initializeApp(firebaseConfig);
export default firebase;
export { firebaseConfig };

