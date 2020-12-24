import * as React from "react";
import { Text, StyleSheet, View, StatusBar } from "react-native";
import { Button, Snackbar } from "react-native-paper";

import Box from "../Components/Box";
import Theme from "../Theme/Theme";

const SnackBar = () => {
  const [visible, setVisible] = React.useState(false);

  const onToggleSnackBar = () => setVisible(!visible);

  const onDismissSnackBar = () => setVisible(false);

  return (
    <View style={styles.container}>
      <StatusBar backgroundColor="#ffffff" barStyle="dark-content" />
      <Button onPress={onToggleSnackBar}>{visible ? "Hide" : "Show"}</Button>
      <Snackbar
        visible={visible}
        onDismiss={onDismissSnackBar}
        action={{
          label: "OK",
          onPress: () => {
            // Do something
          },
        }}
      >
        Your Request has Been Sent !
      </Snackbar>
    </View>
  );
};

export default function RequestAfter() {
  return (
    <View style={styles.container}>
      <Box flex={0.2} color="white" style={{ width: "100%", marginTop: 10 }}>
        <Text style={styles.text}>Request</Text>
      </Box>
      <SnackBar />
    </View>
  );
}

const styles = StyleSheet.create({
  text: {
    color: Theme.notSoLight,
    fontSize: 30,
  },
  container: {
    flex: 1,
    justifyContent: "space-between",
  },
});
