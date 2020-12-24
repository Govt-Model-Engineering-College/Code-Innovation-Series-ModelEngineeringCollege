import React, { useState } from "react";
import {
  StyleSheet,
  Text,
  ScrollView,
  View,
  TouchableOpacity,
  SafeAreaView,
  StatusBar,
} from "react-native";
import { Checkbox } from "react-native-paper";
import Box from "../Components/Box";
import Theme from "../Theme/Theme";
import Layout from "../Layout/Layout";
import Input from "../Components/Input";
import Constants from "expo-constants";
import InputDropdown from "../Components/InputDropdown";

const CheckBox = () => {
  const [checked, setChecked] = React.useState(false);
  return (
    <Checkbox
      color={Theme.notSoLight}
      status={checked ? "checked" : "unchecked"}
      onPress={() => {
        setChecked(!checked);
      }}
    />
  );
};

const ConfirmButton = (props) => {
  return (
    <View style={styles.buttonContainer}>
      <TouchableOpacity style={styles.button} onPress={() => props.onPress}>
        <Text style={styles.buttonText}>{props.text}</Text>
      </TouchableOpacity>
    </View>
  );
};

export default function Request() {
  const [text, setText] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [name, setName] = useState("");
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
      <ScrollView>
        <Box flex={0.2} color="white" style={{ width: "100%", marginTop: 30 }}>
          <Text style={styles.text}>Request</Text>
        </Box>
        <View
          style={{
            flexDirection: "row",
            alignItems: "center",
            justifyContent: "flex-start",
            marginTop: 20,
          }}
        >
          <Text style={{ ...styles.text1, marginRight: 104 }}>Blood Group</Text>
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
            label="Select"
            style={{ width: 100, alignSelf: "center" }}
            baseColor={Theme.notSoLight}
            textColor={Theme.notSoLight}
            selectedItemColor={Theme.notSoLight}
            itemTextStyle={{ alignSelf: "center" }}
          />
        </View>
        <View
          style={{
            flexDirection: "row",
            alignItems: "center",
            justifyContent: "flex-start",
          }}
        >
          <Text style={{ ...styles.text1, marginRight: 85 }}>
            Units Required
          </Text>
          <InputDropdown
            list={[
              { value: "1" },
              { value: "2" },
              { value: "3" },
              { value: "4" },
              { value: "5" },
              { value: "6" },
              { value: "7" },
              { value: "8" },
              { value: "9" },
              { value: "10" },
            ]}
            label="Select"
            style={{ width: 100, alignSelf: "center" }}
            baseColor={Theme.notSoLight}
            textColor={Theme.notSoLight}
            selectedItemColor={Theme.notSoLight}
            itemTextStyle={{ alignSelf: "center" }}
          />
        </View>
        <View
          style={{
            flexDirection: "row",
            alignItems: "center",
            marginTop: 10,
            marginBottom: 5,
          }}
        >
          <Text
            style={{
              ...styles.text1,
              color: Theme.notSoLight,
              marginTop: 0,
              marginRight: 147,
            }}
          >
            Is Critical ?
          </Text>
          <CheckBox />
        </View>
        <Input
          label={"Name"}
          placeholder={"Enter Your Full Name"}
          value={name}
          onChangeText={handleNameChange}
          leftIcon="account"
        />
        <Input
          label={"Phone No."}
          placeholder={"Enter Phone No."}
          value={text}
          onChangeText={handleTextChange}
          leftIcon="phone"
        />
        <Input
          label={"Hospital"}
          placeholder={"Hospital Name"}
          value={text}
          onChangeText={handleTextChange}
          leftIcon="hospital-building"
        />
        <Input
          label={"Case"}
          placeholder={"Enter the Case"}
          value={text}
          onChangeText={handleTextChange}
          leftIcon="bed"
        />
        <Input
          label={"Age"}
          placeholder={"Enter the Age of recipient"}
          value={text}
          onChangeText={handleTextChange}
          leftIcon="123"
        />
        <Input
          label={"Bystanders Name"}
          placeholder={"Full Name of Bystander"}
          value={text}
          onChangeText={handleTextChange}
          leftIcon="account"
        />
        <Input
          label={"Verification ID"}
          placeholder={"Enter the Verification ID "}
          value={text}
          onChangeText={handleTextChange}
          leftIcon="card"
        />
        <View style={{ marginBottom: 50, marginTop: 10, height: 50 }}>
          <ConfirmButton text="Confirm" />
        </View>
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    marginTop: Constants.statusBarHeight,
  },
  text: {
    color: Theme.notSoLight,
    fontSize: 30,
  },
  text1: {
    color: Theme.primary,
    fontSize: 20,
    marginLeft: "10%",
  },
  //CONFIRM BUTTON
  button: {
    margin: 0,
    borderRadius: 7,
    width: "80%",
    height: "100%",
    backgroundColor: Theme.notSoLight,
    justifyContent: "center",
    alignItems: "center",
    alignSelf: "center",
  },
  buttonContainer: {
    width: "100%",
    height: "100%",
    marginTop: Layout.xl,
    justifyContent: "center",
  },
  buttonText: {
    color: "white",
    fontSize: 17,
  },
});
