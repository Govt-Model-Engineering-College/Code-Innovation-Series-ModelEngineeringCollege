import React from "react";
import {
  StyleSheet,
  Text,
  Image,
  View,
  TouchableOpacity,
  ImageBackground,
  StatusBar,
} from "react-native";
import Theme from "../Theme/Theme";
import Box from "../Components/Box";
import blood_donation from "../../assets/blood_donation.png";
// import Request_Img from
// import home_background from "../../assets/home_background.png";

export default function BloodBank() {
  return (
    <View style={{ flex: 1 }}>
      <StatusBar backgroundColor="#ffffff" barStyle="dark-content" />
      <Text
        style={
          (styles.text,
          {
            fontSize: 30,
            color: Theme.red,
            marginTop: 50,
            alignSelf: "center",
            marginBottom: 30,
          })
        }
      >
        Blood Bank
      </Text>
      <Image source={blood_donation} style={styles.img} resizeMode="contain" />
      <View style={styles.row}>
        <TouchableOpacity
          style={{
            justifyContent: "center",
            alignItems: "center",
            height: 110,
            width: 170,
            backgroundColor: Theme.notSoLight,
            borderTopRightRadius: 28,
            borderBottomRightRadius: 28,
          }}
        >
          <Text style={styles.text}>Request</Text>
        </TouchableOpacity>
        <TouchableOpacity
          style={{
            justifyContent: "center",
            alignItems: "center",
            height: 110,
            width: 170,
            backgroundColor: Theme.notSoLight,
            borderTopLeftRadius: 28,
            borderBottomLeftRadius: 28,
          }}
        >
          <Text style={styles.text}>Donate</Text>
        </TouchableOpacity>
      </View>
      <TouchableOpacity
        style={{
          justifyContent: "center",
          alignItems: "center",
          alignSelf: "center",
          height: 100,
          width: 230,
          backgroundColor: Theme.notSoLight,
          borderRadius: 28,
          marginTop: 30,
        }}
      >
        <Text style={styles.text}>Organization</Text>
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({
  img: {
    alignSelf: "center",
    height: 300,
    borderRadius: 8,
  },
  text: {
    fontSize: 28,
    color: "white",
  },
  row: {
    flexDirection: "row",
    width: "100%",
    justifyContent: "space-between",
    marginTop: 50,
  },
});
