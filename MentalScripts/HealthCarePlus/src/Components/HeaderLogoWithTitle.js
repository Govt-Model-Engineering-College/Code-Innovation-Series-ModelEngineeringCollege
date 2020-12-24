import React from "react";
import { StyleSheet, Image, Dimensions } from "react-native";
import Box from "../Components/Box";
import header_title from "../../assets/header_title.png";

export default function HeaderLogoWithTitle() {
  return (
    <Box style={styles.headerTitle}>
      <Image
        source={header_title}
        style={styles.headerTitleImage}
        resizeMode="center"
      />
    </Box>
  );
}

const styles = StyleSheet.create({
  headerTitle: {
    marginTop: 10,
    alignSelf: "center",
  },
  headerTitleImage: {
    height: 75,
    alignSelf: "center",
  },
});
