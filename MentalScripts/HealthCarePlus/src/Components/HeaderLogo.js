import React from "react";
import { StyleSheet, Image } from "react-native";
import Box from "./Box";
import header_logo from "../../assets/logo.png";

export default function HeaderLogo() {
  return (
    <Box style={styles.headerTitle}>
      <Image style={styles.img} source={header_logo} resizeMode="contain" />
    </Box>
  );
}

const styles = StyleSheet.create({
  headerTitle: {
    height: 20,
    width: 20,
  },
  img: {
    height: 70,
    width: 70,
  },
});
