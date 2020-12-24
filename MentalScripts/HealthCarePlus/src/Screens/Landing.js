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
import Swiper from "react-native-swiper";
import Theme from "../Theme/Theme";
import Box from "../Components/Box";
import app_features from "../../assets/app_features.png";
import blood_donation from "../../assets/blood_donation.png";
import home_background from "../../assets/home_background.png";
import HeaderLogoWithTitle from "../Components/HeaderLogoWithTitle";

// import Carousel from "../Components/Carousel";

export default function Landing({ navigation }) {
  // let imgs = [app_features, blood_donation];
  return (
    <ImageBackground source={home_background} style={styles.backgroundImage}>
      <StatusBar backgroundColor="#ffffff" barStyle="dark-content" />
      <HeaderLogoWithTitle />
      <Box flex={2} color="white">
        <View style={styles.sliderContainer}>
          <Swiper
            autoplay
            autoplayTimeout={3}
            scrollEnabled={false}
            height={400}
            activeDotColor={Theme.primary}
          >
            <View style={styles.slide}>
              <Image
                source={app_features}
                resizeMode="cover"
                style={styles.sliderImage}
              />
            </View>
            <View style={styles.slide}>
              <Image
                source={blood_donation}
                resizeMode="cover"
                style={styles.sliderImage}
              />
            </View>
          </Swiper>
        </View>
      </Box>
      <Box flex={0.8}>
        <Box style={styles.roundedContainer} color={Theme.primary}>
          <Box style={styles.buttonContainer}>
            <TouchableOpacity
              style={styles.button}
              onPress={() => navigation.navigate("LogIn")}
            >
              <Text style={styles.text}>Log In</Text>
            </TouchableOpacity>
          </Box>
          <Box style={styles.buttonContainer}>
            <TouchableOpacity
              style={styles.button}
              onPress={() => navigation.navigate("SignUp")}
            >
              <Text style={styles.text}>Sign Up</Text>
            </TouchableOpacity>
          </Box>
        </Box>
      </Box>
    </ImageBackground>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 2,
    alignItems: "center",
    justifyContent: "center",
  },
  sliderContainer: {
    height: 400,
    width: "90%",
    justifyContent: "center",
    alignSelf: "center",
    borderRadius: 8,
  },
  slide: {
    flex: 1,
    justifyContent: "center",
    backgroundColor: "transparent",
    borderRadius: 8,
  },
  sliderImage: {
    height: "100%",
    width: "100%",
    alignSelf: "center",
    borderRadius: 8,
  },
  roundedContainer: {
    width: "70%",
    height: "90%",
    borderRadius: 64,
    paddingTop: 30,
    paddingBottom: 30,
  },
  button: {
    margin: 0,
    borderRadius: 37,
    width: "70%",
    height: "70%",
    backgroundColor: "#ffffff",
    justifyContent: "center",
    alignItems: "center",
  },
  buttonContainer: {
    width: "70%",
    height: 60,
  },
  text: {
    color: Theme.primary,
    fontSize: 17,
    fontWeight: "bold",
  },
  backgroundImage: {
    flex: 1,
    resizeMode: "cover",
    justifyContent: "center",
  },
});
