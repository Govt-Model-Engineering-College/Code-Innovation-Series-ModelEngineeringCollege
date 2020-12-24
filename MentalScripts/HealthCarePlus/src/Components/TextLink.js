import React from "react";
import { View, StyleSheet, Text, TouchableOpacity } from "react-native";
import Theme from "../Theme/Theme";
import Layout from "../Layout/Layout";

export default function TextLink(props) {
  return (
    <View style={styles.buttonContainer}>
      <TouchableOpacity style={styles.button} onPress={props.onPress}>
        <Text
          style={{
            ...styles.buttonText,
            alignSelf: props.align === undefined ? "center" : props.align,
          }}
        >
          {props.text}
        </Text>
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({
  button: {
    margin: 0,
    borderRadius: 7,
    width: "80%",
    height: "100%",
    backgroundColor: "transparent",
    justifyContent: "center",
    alignItems: "center",
    alignSelf: "center",
  },
  buttonContainer: {
    width: "100%",
    height: "6%",
    marginTop: Layout.xl,
    justifyContent: "center",
  },
  buttonText: {
    color: Theme.secondary,
    fontSize: 17,
  },
});
