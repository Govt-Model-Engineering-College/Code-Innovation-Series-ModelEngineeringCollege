import React from "react";
import { Text, View, StyleSheet, Image } from "react-native";

import stethoscope from "../../assets/stethoscope.png";
import hospital from "../../assets/hospital.png";
import clock from "../../assets/clock.png";
import mdi_accessible from "../../assets/mdi_accessible.png";
import Theme from "../Theme/Theme";

export default function HistoryCard(props) {
  return (
    <View style={styles.container}>
      <View style={styles.row}>
        <Image style={styles.icon} source={stethoscope} />
        <Text style={styles.text}> {props.drName}</Text>
      </View>
      <View style={styles.row}>
        <Image style={styles.icon} source={hospital} />
        <Text style={styles.text}>{props.hospitalName}</Text>
      </View>
      <View style={styles.row}>
        <Image style={styles.icon} source={mdi_accessible} />
        <Text style={styles.text}> {props.case}</Text>
      </View>
      <View style={styles.row}>
        <Image style={styles.clock} source={clock} />
        <Text style={styles.text}>{props.dateTime}</Text>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    width: "90%",
    minWidth: 200,
    height: 155,
    flexWrap: "wrap",
    backgroundColor: Theme.primary,
    borderRadius: 16,
    padding: 20,
    justifyContent: "space-evenly",
  },
  text: {
    fontSize: 14,
    color: "white",
  },
  row: {
    width: "100%",
    flexDirection: "row",
    alignItems: "center",
  },
  icon: {
    height: 22,
    width: 22,
    resizeMode: "contain",
    marginRight: 10,
  },
  clock: {
    height: 20,
    width: 20,
    resizeMode: "contain",
    marginRight: 10,
    marginLeft: 2,
  },
});
