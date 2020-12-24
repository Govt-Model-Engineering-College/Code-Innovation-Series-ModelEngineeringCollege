import React, { useState } from "react";
import {
  ScrollView,
  View,
  Text,
  StyleSheet,
  StatusBar,
  Dimensions,
  Image,
} from "react-native";
import ButtonOutlined from "../Components/ButtonOutlined";
import Theme from "../Theme/Theme";
import user_icon from "../../assets/user_light.png";

export default function MyProfile({ navigation }) {
  const [profileDetails, setProfileDetails] = useState({});
  return (
    <ScrollView contentContainerStyle={styles.container}>
      <StatusBar backgroundColor="#ffffff" barStyle="dark-content" />
      <Text style={styles.header}>My Profile</Text>
      <View>
        <View style={styles.userIcon}>
          <Image source={user_icon} style={styles.userIconImage} />
        </View>
        <Text style={styles.detailsText_name}>
          {profileDetails.name ? profileDetails.name : "Your Name"}
        </Text>
      </View>
      <View style={styles.details}>
        <View style={styles.basicInfo}>
          <Text style={styles.basicInfoText}>Basic Info</Text>
        </View>
        <Text style={styles.detailsText}>
          {profileDetails.date_of_birth
            ? profileDetails.date_of_birth
            : "DD-MM-YYYY"}
        </Text>
        <Text style={styles.detailsText}>
          {profileDetails.blood_group ? profileDetails.blood_group : "GG"}
        </Text>
        <Text style={styles.detailsText}>
          +91{" "}
          {profileDetails.phone_no ? profileDetails.phone_no : "00000000000"}
        </Text>
      </View>
      <ButtonOutlined text="Log Out" />
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: Theme.white,
    alignItems: "center",
    justifyContent: "space-evenly",
    marginTop: 20,
    minHeight: Dimensions.get("window").height,
  },
  header: {
    color: Theme.primary,
    fontSize: 30,
  },
  details: {
    padding: "10%",
    width: "90%",
    backgroundColor: Theme.primary,
    borderRadius: 16,
    alignItems: "center",
  },
  detailsText: {
    color: Theme.white,
    fontSize: 20,
    marginTop: 5,
    marginBottom: 5,
  },

  basicInfo: {
    backgroundColor: Theme.white,
    width: 90,
    height: 25,
    justifyContent: "center",
    borderRadius: 16,
    position: "absolute",
    borderColor: Theme.primary,
    borderWidth: 1,
    left: 15,
    top: -12.5,
  },
  basicInfoText: {
    color: Theme.primary,
    alignSelf: "center",
  },
  userIcon: {
    backgroundColor: Theme.primary,
    height: 0.155 * Dimensions.get("window").height,
    width: 0.155 * Dimensions.get("window").height,
    justifyContent: "center",
    alignItems: "center",
    borderRadius: 100,
  },
  userIconImage: {
    height: 0.15 * Dimensions.get("window").height,
    width: 0.15 * Dimensions.get("window").height,
  },
  detailsText_name: {
    color: Theme.primary,
    marginTop: 10,
    alignSelf: "center",
    fontSize: 17,
  },
});
