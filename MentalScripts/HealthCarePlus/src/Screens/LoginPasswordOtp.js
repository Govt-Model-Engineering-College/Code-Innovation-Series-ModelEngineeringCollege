import React, { useState } from "react";
import {
  StyleSheet,
  Text,
  ImageBackground,
  Dimensions,
  StatusBar,
} from "react-native";
import home_background from "../../assets/home_background.png";
import Box from "../Components/Box";
import Theme from "../Theme/Theme";
import Input from "../Components/Input";
import TextLink from "../Components/TextLink";
import HeaderLogo from "../Components/HeaderLogo";
import Button from "../Components/Button";
import Notify from "../Components/Notifier";

export default function LoginPasswordOtp() {
  const [text, setText] = useState("");
  const handleTextChange = (text) => {
    setText(text);
    console.log(text);
  };
  return (
    <ImageBackground source={home_background} style={styles.backgroundImage}>
      <StatusBar backgroundColor="#ffffff" barStyle="dark-content" />
      <Box
        flex={0.1}
        color="white"
        style={{
          width: "100%",
          marginBottom: 10,
          marginTop: -30,
        }}
      >
        <HeaderLogo />
      </Box>
      <Box
        flex={0.2}
        color="white"
        style={{ width: "100%", backgroundColor: "transparent" }}
      >
        <Text style={styles.text}>Log In</Text>
      </Box>
      <Input
        label={"Password / OTP"}
        placeholder={"Enter Your Password / OTP"}
        value={text}
        type="password"
        onChangeText={handleTextChange}
        leftIcon="lock"
      />
      <TextLink text="Forgot Password?" align="flex-end" />
      <Button
        text="Log In"
        onPress={() =>
          Notify({
            title: "John Doe",
            description: "Hello! Can you help me with notifications?",
            duration: 3000,
            showAnimationDuration: 800,
            onHidden: () => console.log("Hidden"),
            onPress: () => console.log("Press"),
            hideOnPress: false,
          })
        }
      />
    </ImageBackground>
  );
}

const styles = StyleSheet.create({
  backgroundImage: {
    flex: 1,
    resizeMode: "cover",
    justifyContent: "center",
    minHeight: Dimensions.get("window").height,
  },
  text: {
    color: Theme.primary,
    fontSize: 30,
  },
});
