import Carousel from "../Components/Carousel";
import Box from "../Components/Box";
import { Text, View, StyleSheet, StatusBar } from "react-native";
import Theme from "../Theme/Theme";
import TextLink from "../Components/TextLink";

export default function Updates() {
  return (
    <View style={styles.Container}>
      <StatusBar backgroundColor="#ffffff" barStyle="dark-content" />
      <Text style={styles.heading}>Regional</Text>
      <Carousel></Carousel>
      <Text style={styles.heading}>General</Text>
      <Carousel></Carousel>
    </View>
  );
}

const styles = StyleSheet.create({
  heading: {
    color: Theme.primary,
  },
  container: {
    flex: 1,
    height: 70,
    alignItems: "center",
    padding: 10,
    width: "100%",
  },
});
