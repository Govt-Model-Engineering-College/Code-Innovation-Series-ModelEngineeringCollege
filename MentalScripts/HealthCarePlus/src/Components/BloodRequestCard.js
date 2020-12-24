import React, { useState } from "react";
import { Text, StyleSheet, View, Image } from "react-native";

import Theme from "../Theme/Theme";

export default function BloodCard(props) {
  const [isCritical, setCritical] = useState(props.isCritical);
  return (
    <View style={styles.container} elevation={3}>
      <View style={styles.second}>
        <Text style={styles.Hospital}>{props.hospitalName}</Text>
        <Text style={styles.Bgroup}>{props.bloodGroup}</Text>
        <Text style={styles.name}>{props.patientName}</Text>
      </View>
      <View style={styles.first}>
        <View style={styles.circle}>
          <Text style={styles.units}>{props.units}</Text>
        </View>
        <Text style={styles.unitsReq}>Units Required</Text>
      </View>
      <Text
        style={{
          fontSize: 10,
          color: Theme.primary,
        }}
      >
        Read More
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    width: "90%",
    minWidth: 200,
    height: 200,
    flexDirection: "row-reverse",
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
  circle: {
    height: 90,
    width: 90,
    padding: 10,
    marginTop: 15,
    backgroundColor: "#FF4545",
    borderRadius: 100,
    borderColor: Theme.primary,
    alignSelf: "center",
    alignItems: "center",
  },
  name: {
    fontSize: 12,
    alignSelf: "center",
    // marginTop: 15,
    marginTop: 24,
    color: "black",
  },
  unitsReq: {
    fontSize: 12.3,
    width: "100%",
    alignSelf: "center",
    marginTop: 10,
    color: "black",
    fontWeight: "bold",
  },
  Hospital: {
    alignSelf: "center",
    color: Theme.secondary,
    fontSize: 21,
  },
  Bgroup: {
    color: "#F72B2B",
    fontSize: 33,
    marginTop: 18,
    alignSelf: "center",
    fontFamily: "sans-serif",
  },
  units: {
    color: Theme.white,
    fontWeight: "bold",
    fontSize: 50,
  },
});
