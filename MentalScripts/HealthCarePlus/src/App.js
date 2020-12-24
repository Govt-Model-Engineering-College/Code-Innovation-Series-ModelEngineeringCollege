import React from "react";
import { StyleSheet } from "react-native";
import { Provider as PaperProvider } from "react-native-paper";
import { NotifierWrapper } from "react-native-notifier";

import Landing from "./Screens/Landing";
import LogIn from "./Screens/LogIn";
import SignUp from "./Screens/SignUp";
import LoginPasswordOtp from "./Screens/LoginPasswordOtp";
import Request from "./Screens/Request";
import BloodBank from "./Screens/BloodBank";
import RequestAfter from "./Screens/RequestAfter";
import Home from "./Screens/Home";
import BloodRequestCard from "./Components/BloodRequestCard";
import HistoryCard from "./Components/HistoryCard";
import ContactDetails from "./Components/ContactDetails";
import { createStackNavigator } from "@react-navigation/stack";
import { NavigationContainer } from "@react-navigation/native";
import Organizations from "./Screens/Organizations";
import MyProfile from "./Screens/MyProfile";

import firebase, { firebaseConfig } from "./Config/firebase";
import { FirebaseRecaptchaVerifierModal } from "expo-firebase-recaptcha";

const Stack = createStackNavigator();

const navOptions = {
  headerShown: false,
};

const StackNavigator = () => (
  <Stack.Navigator screenOptions={navOptions} initialRouteName="Landing">
    <Stack.Screen name="Landing" component={Landing} />
    <Stack.Screen name="LogIn" component={LogIn} />
    <Stack.Screen name="SignUp" component={SignUp} />
    <Stack.Screen name="Home" component={Home} />
  </Stack.Navigator>
);

/* <PaperProvider>
      <NavigationContainer>
        <StackNavigator />
      </NavigationContainer>
    </PaperProvider>
    <NotifierWrapper>
      <LoginPasswordOtp />
    </NotifierWrapper> */

/* <BloodRequestCard
  hospitalName="Medical Trust"
  bloodGroup="AB+"
  patientName="John Doe"
  units="3"
  isCritical={true}

/><ContactDetails />
<Organizations /> */

export default function Main() {
  return (
    <PaperProvider>
      <NavigationContainer>
        <StackNavigator />
      </NavigationContainer>
    </PaperProvider>
  );
}

const styles = StyleSheet.create({});

// import React, { useRef, useState } from "react";
// import {
//   TouchableOpacity,
//   Text,
//   TextInput,
//   View,
//   StyleSheet,
// } from "react-native";
// import { FirebaseRecaptchaVerifierModal } from "expo-firebase-recaptcha";
// import Constants from "expo-constants";
// import { KeyboardAwareScrollView } from "react-native-keyboard-aware-scroll-view";

// import firebase, { firebaseConfig } from "./Config/firebase";

// export default function Main() {
//   const [phoneNumber, setPhoneNumber] = useState("");
//   const [code, setCode] = useState("");
//   const [verificationId, setVerificationId] = useState(null);
//   const recaptchaVerifier = useRef(null);

//   const sendVerification = () => {
//     const phoneProvider = new firebase.auth.PhoneAuthProvider();
//     phoneProvider
//       .verifyPhoneNumber(phoneNumber, recaptchaVerifier.current)
//       .then(setVerificationId)
//       .catch((error) => {
//         console.log(error);
//       });
//   };

//   const confirmCode = () => {
//     const credential = firebase.auth.PhoneAuthProvider.credential(
//       verificationId,
//       code
//     );
//     firebase
//       .auth()
//       .signInWithCredential(credential)
//       .then((result) => {
//         console.log(result);
//       })
//       .catch((error) => {
//         console.log(error);
//       });
//   };

//   return (
//     <KeyboardAwareScrollView contentContainerStyle={styles.container}>
//       <View>
//         <FirebaseRecaptchaVerifierModal
//           ref={recaptchaVerifier}
//           firebaseConfig={firebaseConfig}
//         />
//         <TextInput
//           placeholder="Phone Number"
//           onChangeText={setPhoneNumber}
//           keyboardType="phone-pad"
//           autoCompleteType="tel"
//           style={styles.textInput}
//         />
//         <TouchableOpacity
//           style={styles.sendVerification}
//           onPress={sendVerification}
//         >
//           <Text style={styles.buttonText}>Send Verification</Text>
//         </TouchableOpacity>
//         <TextInput
//           placeholder="Confirmation Code"
//           onChangeText={setCode}
//           keyboardType="number-pad"
//           style={styles.textInput}
//         />
//         <TouchableOpacity style={styles.sendCode} onPress={confirmCode}>
//           <Text style={styles.buttonText}>Sign Up</Text>
//         </TouchableOpacity>
//       </View>
//     </KeyboardAwareScrollView>
//   );
// }

// const styles = StyleSheet.create({
//   container: {
//     flex: 1,
//     backgroundColor: "#ffffff",
//     alignItems: "center",
//     justifyContent: "center",
//   },
//   textInput: {
//     paddingTop: 40,
//     paddingBottom: 20,
//     paddingHorizontal: 20,
//     fontSize: 24,
//     borderBottomColor: "#7f8c8d33",
//     borderBottomWidth: 2,
//     marginBottom: 10,
//     textAlign: "center",
//   },
//   sendVerification: {
//     padding: 20,
//     backgroundColor: "#3498db",
//     borderRadius: 10,
//   },
//   sendCode: {
//     padding: 20,
//     backgroundColor: "#9b59b6",
//     borderRadius: 10,
//   },
//   buttonText: {
//     textAlign: "center",
//     color: "#ffffff",
//   },
// });
