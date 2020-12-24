import React, { Component } from "react";
import { StyleSheet, View } from "react-native";
import { TextInput } from "react-native-paper";
import Theme from "../Theme/Theme";
import Layout from "../Layout/Layout";

export default function Input(props) {
  return (
    <View>
      <TextInput
        label={props.label}
        placeholder={props.placeholder}
        isFocused={true}
        value={props.value}
        keyboardType={
          props.keyboardType === undefined ? "default" : props.keyboardType
        }
        // autoCorrect={!props.autoCorrect ? false : true}
        secureTextEntry={props.type === "password" ? true : false}
        onChangeText={props.onChangeText}
        style={styles.input}
        underlineColor={Theme.primary}
        theme={{ colors: { primary: Theme.primary } }}
        left={
          <TextInput.Icon
            style={styles.icon}
            name={props.leftIcon}
            color={"#00000070"}
          />
        }
        right={
          <TextInput.Icon
            style={styles.icon}
            name={props.rightIcon}
            color={"#00000070"}
          />
        }
      />
    </View>
  );
}

const styles = StyleSheet.create({
  input: {
    backgroundColor: "white",
    width: "80%",
    alignSelf: "center",
    marginBottom: Layout.m10,
  },
  icon: {
    alignSelf: "center",
    marginRight: Layout.l,
    marginTop: Layout.l,
  },
});
