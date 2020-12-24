import React, { useState } from "react";
import {
  StyleSheet,
  Text,
  ImageBackground,
  Dimensions,
  View,
  StatusBar,
} from "react-native";
import home_background from "../../assets/home_background.png";
import HeaderLogo from "../Components/HeaderLogo";
import Theme from "../Theme/Theme";
import Box from "../Components/Box";
import Input from "../Components/Input";
import Button from "../Components/Button";
import ButtonOutlined from "../Components/ButtonOutlined";
import { KeyboardAwareScrollView } from "react-native-keyboard-aware-scroll-view";

const windowHeight = Dimensions.get("window").height;

export default function LogIn({ navigation }) {
  const [phoneNo, setPhoneNo] = useState("");
  return (
    <KeyboardAwareScrollView>
      <ImageBackground source={home_background} style={styles.backgroundImage}>
        <StatusBar backgroundColor="#ffffff" barStyle="dark-content" />
        <Box
          flex={0.1}
          color="white"
          style={{ width: "100%", marginBottom: 20, marginTop: 100 }}
        >
          <HeaderLogo />
        </Box>
        <Box flex={0.4} color="white" style={{ width: "100%" }}>
          <Text style={styles.text}>Log In</Text>
        </Box>
        <Input
          label={"Phone No."}
          placeholder={"+91"}
          value={phoneNo}
          onChangeText={(phoneNo) => setPhoneNo(phoneNo)}
          leftIcon="phone"
          keyboardType="number-pad"
        />
        <View style={{ marginBottom: 10 }} />
        <Button
          text="Log In Using Password"
          onPress={() => console.log("pressed")}
        />
        <ButtonOutlined text="Log In Using OTP" />
        <ButtonOutlined
          text="SIgn Up"
          onPress={() => navigation.navigate("SignUp")}
        />
      </ImageBackground>
    </KeyboardAwareScrollView>
  );
}

const styles = StyleSheet.create({
  backgroundImage: {
    flex: 1,
    resizeMode: "cover",
    minHeight: windowHeight,
  },
  text: {
    color: Theme.primary,
    fontSize: 30,
  },
});
