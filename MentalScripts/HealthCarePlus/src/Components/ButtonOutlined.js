import React from "react";
import { View, StyleSheet, Text, TouchableOpacity } from "react-native";
import Theme from "../Theme/Theme";
import Layout from "../Layout/Layout";

export default function ButtonOutlined(props) {
  return (
    <View style={styles.buttonContainer}>
      <TouchableOpacity style={styles.buttonOutlined} onPress={props.onPress}>
        <Text style={styles.buttonOutlinedText}>{props.text}</Text>
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({
  buttonContainer: {
    width: "100%",
    height: "6%",
    marginTop: Layout.xl,
    justifyContent: "center",
  },
  buttonOutlined: {
    borderColor: Theme.primary,
    borderWidth: 1,
    backgroundColor: "white",
    margin: 0,
    borderRadius: 7,
    width: "80%",
    height: 46,
    justifyContent: "center",
    alignItems: "center",
    alignSelf: "center",
  },
  buttonOutlinedText: {
    color: Theme.primary,
    fontSize: 17,
  },
});
