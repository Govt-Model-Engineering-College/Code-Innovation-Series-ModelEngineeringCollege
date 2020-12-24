import React from 'react';
import  { StyleSheet, View } from 'react-native';

const Box = (props) => {
  return (
    <View style={{
      ...styles.container,
      ...props.style,
      flex: props.flex,
      margin: props.margin,
      backgroundColor: props.color
    }}>
      {props.children}
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    alignItems: 'center',
    justifyContent: 'center'
  }
});

export default Box;