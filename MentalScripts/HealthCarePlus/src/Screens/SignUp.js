import React, { useState } from "react";
import {
  StyleSheet,
  Text,
  View,
  Image,
  Dimensions,
  ScrollView,
  SafeAreaView,
  StatusBar,
} from "react-native";
import DateTimePicker from "@react-native-community/datetimepicker";
import footer from "../../assets/footer.png";
import Box from "../Components/Box";
import Theme from "../Theme/Theme";
import Input from "../Components/Input";
import InputDropdown from "../Components/InputDropdown";
import Button from "../Components/Button";
import ButtonOutlined from "../Components/ButtonOutlined";
import HeaderLogo from "../Components/HeaderLogo";
import Constants from "expo-constants";

export default function SignUp({ navigation }) {
  const [text, setText] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [name, setName] = useState("");
  const [date, setDate] = useState(new Date());
  const handleTextChange = (text) => {
    setText(text);
    console.log(text);
  };
  const handlePasswordChange = (password) => {
    setPassword(password);
    console.log(password);
  };
  const handleConfirmPasswordChange = (confirmPassword) => {
    setConfirmPassword(confirmPassword);
    console.log(confirmPassword);
  };
  const handleNameChange = (name) => {
    setName(name);
    console.log(name);
  };
  return (
    <SafeAreaView style={styles.container}>
      <StatusBar backgroundColor="#ffffff" barStyle="dark-content" />
      <ScrollView
        style={{
          paddingTop: Constants.statusBarHeight + 50,
          backgroundColor: "white",
          // flex: 1,
          // minHeight: Dimensions.get("window").height,
        }}
        contentContainerStyle={{
          marginTop: Constants.statusBarHeight,
          // minHeight: Dimensions.get("window").height,
          paddingBottom: 0,
        }}
      >
        {/* <Box
          flex={0.1}
          color="white"
          style={{ width: "100%", marginBottom: 50, marginTop: 25 }}
        ></Box> */}
        <View
          style={{
            width: "100%",
            marginBottom: 50,
            marginTop: 25,
            width: "100%",
            justifyContent: "center",
            alignItems: "center",
          }}
        >
          <HeaderLogo />
        </View>
        <Box
          flex={0.2}
          color="white"
          style={{ width: "100%", marginBottom: 20 }}
        >
          <Text style={styles.text}>Sign Up</Text>
        </Box>
        <InputDropdown
          list={[
            { value: "Individual" },
            { value: "Doctor" },
            { value: "Organization" },
          ]}
          label="Sign Up As"
          style={{ width: "80%", alignSelf: "center" }}
          baseColor={Theme.primary}
          textColor={Theme.primary}
          selectedItemColor={Theme.primary}
        />
        <Input
          label={"Phone No."}
          placeholder={"+91"}
          value={text}
          onChangeText={handleTextChange}
          leftIcon="phone"
          keyboardType="number-pad"
        />
        <Input
          label={"Name"}
          placeholder={"Enter Your Full Name"}
          value={name}
          onChangeText={handleNameChange}
          leftIcon="account"
        />
        <View style={styles.row}>
          {/* <DateTimePicker
            testID="dateTimePicker"
            value={date}
            mode="date"
            is24Hour={true}
            display="default"
            // onChange={onChange}
          /> */}
          <View
            style={{
              width: "100%",
              alignItems: "center",
              justifyContent: "center",
            }}
          >
            <InputDropdown
              list={[
                { value: "A+" },
                { value: "A-" },
                { value: "B+" },
                { value: "B-" },
                { value: "O+" },
                { value: "O-" },
                { value: "AB+" },
                { value: "AB-" },
              ]}
              label="Blood Group"
              style={{ width: 150, alignSelf: "center" }}
              baseColor={Theme.primary}
              textColor={Theme.primary}
              selectedItemColor={Theme.notSoLight}
              itemTextStyle={{ alignSelf: "center" }}
            />
          </View>
        </View>
        <Input
          label={"New Password"}
          placeholder={"Enter New Password"}
          value={password}
          type="password"
          onChangeText={handlePasswordChange}
          rightIcon="eye-off"
          leftIcon="lock"
        />
        <Input
          label={"Confirm Password"}
          placeholder={"Confirm Your Password"}
          value={confirmPassword}
          type="password"
          onChangeText={handleConfirmPasswordChange}
          rightIcon="eye-off"
          leftIcon="lock"
        />
        <Button text="Sign Up" />
        <ButtonOutlined text="Log In" />
        <Image source={footer} style={styles.footer} resizeMode="center" />
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    // marginTop: Constants.statusBarHeight,
    // minHeight: Dimensions.get("window").height,
    backgroundColor: Theme.white,
  },
  footer: {
    width: "100%",
    marginTop: -70,
    zIndex: -1,
  },
  text: {
    color: Theme.primary,
    fontSize: 30,
  },
  row: {
    flexDirection: "row",
  },
});
