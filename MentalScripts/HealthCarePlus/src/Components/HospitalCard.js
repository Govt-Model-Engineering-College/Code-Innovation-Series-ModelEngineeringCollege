import React, { useState } from "react";
import { Text, StyleSheet, View, Image } from "react-native";

import Theme from "../Theme/Theme";
export default function HospitalCard() {
  return (
    <View style={styles.container} elevation={3}>
      <View style={styles.first}>
        <Image source="" />
      </View>
      <View style={styles.second}></View>
      <View style={styles.third}></View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    width: "90%",
    minWidth: 200,
    height: 200,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    paddingBottom: 25,
    paddingLeft: 25,
    paddingRight: 25,
    paddingTop: 14,
    borderColor: "#00000030",
    borderWidth: 0.1,
    flexWrap: "wrap",
    borderRadius: 16,
  },
  first: {
    padding: 20,
    width: "40%",
    height: "100%",
  },
  second: {
    height: "100%",
    width: "60%",
    padding: 20,
  },
});
