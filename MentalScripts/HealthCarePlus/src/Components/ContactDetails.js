import React, { useState } from "react";
import { Text, StyleSheet, View, Image } from "react-native";

import Theme from "../Theme/Theme";
import user from "../../assets/user_light.png";

export default function ContactDetails(props) {
  return (
    <View style={styles.container}>
      <View style={styles.first}>
        <Image style={styles.image} source={user} />
      </View>
      <View style={styles.second}>
        <Text style={styles.text}>{props.contactName}</Text>
        <Text style={styles.text}>{props.phoneNo}</Text>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    width: "90%",
    minWidth: 200,
    height: 140,
    flexWrap: "wrap",
    flexDirection: "row",
    backgroundColor: "#FC3838",
    borderRadius: 67,
    padding: 20,
    justifyContent: "center",
  },
  first: {
    width: "35%",
    height: "100%",
  },
  second: {
    width: "65%",
    height: "100%",
  },
  text: {
    fontSize: 20,
    width: "100%",
    color: "white",
    alignSelf: "flex-start",
    padding: 10,
  },
  image: {
    width: 100,
    height: 100,
    borderRadius: 100,
    alignSelf: "center",
    alignItems: "center",
    marginBottom: 15,
  },
});
