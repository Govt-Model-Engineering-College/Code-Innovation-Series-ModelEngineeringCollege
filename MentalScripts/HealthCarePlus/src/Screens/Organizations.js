import React from "react";
import {
  StyleSheet,
  Text,
  Image,
  View,
  TouchableOpacity,
  Dimensions,
  StatusBar,
  ScrollView,
} from "react-native";
import Constants from "expo-constants";
import Box from "../Components/Box";
import Theme from "../Theme/Theme";
import hospitalCard from "../../assets/hospital_details.png";
import doctorCard from "../../assets/doctor_details.png";

export default function Organizations() {
  return (
    <View style={styles.container}>
      <StatusBar backgroundColor="#ffffff" barStyle="dark-content" />
      <ScrollView
        style={{
          marginTop: Constants.statusBarHeight,
        }}
        contentContainerStyle={{ paddingBottom: 15 }}
      >
        <Box flex={0.2} color="white" style={{ width: "100%", marginTop: 30 }}>
          <Text style={styles.text}>Organizations</Text>
        </Box>
        <Text style={{ ...styles.text1, marginTop: 25 }}>Hospital</Text>
        <View>
          <TouchableOpacity>
            <Image style={styles.image} source={hospitalCard} elevation={2} />
          </TouchableOpacity>
          <TouchableOpacity>
            <Image style={styles.image} source={hospitalCard} elevation={2} />
          </TouchableOpacity>
        </View>

        <Text style={styles.text1}>Organizations / Clubs</Text>

        <View>
          <TouchableOpacity>
            <Image style={styles.image} source={hospitalCard} elevation={2} />
          </TouchableOpacity>
          <TouchableOpacity>
            <Image style={styles.image} source={hospitalCard} elevation={2} />
          </TouchableOpacity>
        </View>
        <Text style={styles.text1}>Our Coordinators</Text>

        <View>
          <TouchableOpacity>
            <Image style={styles.image} source={doctorCard} elevation={2} />
          </TouchableOpacity>

          <TouchableOpacity>
            <Image style={styles.image} source={doctorCard} elevation={2} />
          </TouchableOpacity>
        </View>
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  text: {
    color: Theme.notSoLight,
    fontSize: 30,
  },
  text1: {
    marginLeft: 34,
    marginTop: 10,
    color: Theme.primary,
    fontSize: 22,
    marginBottom: 10,
  },
  image: {
    width: "85%",
    height: 100,
    resizeMode: "contain",
    alignSelf: "center",
    marginBottom: 7,
  },
});
