import React from "react";
import {
  StyleSheet,
  Text,
  Image,
  View,
  TouchableOpacity,
  Dimensions,
  StatusBar,
} from "react-native";
import Swiper from "react-native-swiper";
import Theme from "../Theme/Theme";
import Image_1 from "../../assets/1.png";
import Image_2 from "../../assets/2.png";
import Image_3 from "../../assets/3.png";
import ambulance_icon from "../../assets/emergency.png";
import consult_icon from "../../assets/consult.png";
// import covid_icon from "../../assets/covid.png";
import blood_bank_icon from "../../assets/blood_bank.png";
import my_profile_icon from "../../assets/my_profile.png";
import health_vault from "../../assets/health_vault.png";
import updates from "../../assets/updates.png";
import footer_home from "../../assets/footer_home.png";
import HeaderLogoWithTitle from "../Components/HeaderLogoWithTitle";

const windowHeight = Dimensions.get("window").height;

export default function Home({ navigation }) {
  return (
    <View
      style={{ flex: 1, minHeight: windowHeight, backgroundColor: Theme.white }}
    >
      <StatusBar backgroundColor="#ffffff" barStyle="dark-content" />
      <View style={{ marginBottom: 10 }}>
        <HeaderLogoWithTitle />
      </View>
      <View style={styles.sliderContainer}>
        <Swiper
          autoplay
          autoplayTimeout={3}
          scrollEnabled={false}
          height={150}
          activeDotColor={Theme.primary}
        >
          <View style={styles.slide}>
            <Image
              source={Image_1}
              resizeMode="cover"
              style={styles.sliderImage}
            />
          </View>
          <View style={styles.slide}>
            <Image
              source={Image_2}
              resizeMode="cover"
              style={styles.sliderImage}
            />
          </View>
          <View style={styles.slide}>
            <Image
              source={Image_3}
              resizeMode="cover"
              style={styles.sliderImage}
            />
          </View>
        </Swiper>
      </View>
      <View style={{ flex: 0.94, justifyContent: "space-evenly" }}>
        <View style={styles.ambulance}>
          <TouchableOpacity>
            <Image style={styles.iconRed} source={ambulance_icon} />
          </TouchableOpacity>
        </View>
        <View style={styles.menuContainer}>
          <TouchableOpacity>
            <Image style={styles.icons} source={consult_icon} />
          </TouchableOpacity>
          <TouchableOpacity>
            <Image style={styles.icons} source={blood_bank_icon} />
          </TouchableOpacity>
          {/* <TouchableOpacity>
            <Image style={styles.icons} source={covid_icon} />
          </TouchableOpacity> */}
          <TouchableOpacity>
            <Image style={styles.icons} source={updates} />
          </TouchableOpacity>
        </View>
        <View style={styles.menuContainer}>
          <TouchableOpacity>
            <Image style={styles.icons} source={my_profile_icon} />
          </TouchableOpacity>
          <TouchableOpacity>
            <Image style={styles.icons} source={health_vault} />
          </TouchableOpacity>
        </View>
      </View>
      <Image resizeMode="contain" style={styles.footer} source={footer_home} />
    </View>
  );
}

const styles = StyleSheet.create({
  sliderContainer: {
    width: "85%",
    height: 150,
    justifyContent: "center",
    alignSelf: "center",
    borderRadius: 16,
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
  ambulance: {
    width: "100%",
    alignItems: "center",
  },
  menuContainer: {
    flexDirection: "row",
    justifyContent: "space-evenly",
    paddingLeft: 20,
    paddingRight: 20,
  },
  icons: {
    width: 0.15 * windowHeight,
    height: 0.15 * windowHeight,
  },
  iconRed: {
    width: 0.15 * windowHeight,
    height: 0.15 * windowHeight,
  },
  footer: {
    height: 62,
    width: "100%",
    marginBottom: -4,
  },
});

// const HomeScreen = ({ navigation }) => (
//     <TouchableOpacity
//       onPress={() =>
//         navigation?.push('Details', {
//           title,
//           content,
//         })
//       }
//     >
//       <Card>
//         <Card.Content>
//           <Title>{title}</Title>
//           <Paragraph>{content}</Paragraph>
//         </Card.Content>
//       </Card>
//     </TouchableOpacity>
//   );

// //   Text input
// import React, { Component } from 'react';
// import { View, TextInput } from 'react-native';

// const UselessTextInput = (props) => {
//   return (
//     <TextInput
//       label = "Phone No."
//       {...props} // Inherit any props passed to it; e.g., multiline, numberOfLines below
//       editable
//       mode = "Outlined"
//       maxLength={10}
//     />
//   );
// }

// const UselessTextInputMultiline = () => {
//   const [value, onChangeText] = React.useState('Useless Multiline Placeholder');

//   // If you type something in the text box that is a color, the background will change to that
//   // color.
//   return (
//     <View
//       style={{
//         borderBottomColor: '#007FC5',
//         borderBottomWidth: 1,
//       }}>
//       <UselessTextInput
//         multiline
//         mode={'outlined'}
//         numberOfLines={2}
//         onChangeText={text => onChangeText(text)}
//         value={value}
//       />
//     </View>
//   );
// }

// export default UselessTextInputMultiline;

// import * as React from 'react';
// import { TextInput } from 'react-native-paper';
// import {View} from 'react-native';
// const MyComponent = () => {
//   const [text, setText] = React.useState('');

//   return (
//     <View
//       styles={{width: '80%'}}
//     >
//     <TextInput
//       label="Phone No."

//       isFocused={true}
//       value={text}
//       onChangeText={text => setText(text)}
//     />
//     </View>
//   );
// };

// export default MyComponent;

// import 'react-native-gesture-handler';
// import React from 'react';
// import { NavigationContainer } from '@react-navigation/native';
// import { createStackNavigator } from '@react-navigation/stack';
// import { TouchableOpacity } from 'react-native';
// import {
//   Card,
//   Title,
//   Paragraph,
//   List,
//   Provider as PaperProvider,
// } from 'react-native-paper';

// const Stack = createStackNavigator();

// const title = "Hello";
// const content = "World";

// const HomeScreen = ({ navigation }) => (
//   <TouchableOpacity
//     onPress={() =>
//       navigation?.push('Details', {
//         title,
//         content,
//       })
//     }
//   >
//     <Card>
//       <Card.Content>
//         <Title>{title}</Title>
//         <Paragraph>{content}</Paragraph>
//       </Card.Content>
//     </Card>
//   </TouchableOpacity>
// );

// const DetailsScreen = (props) => {
//     console.log(props)
//   const { title, content } = props?.route?.params;
//   return (
//     <List.Section>
//       <List.Subheader>{title}</List.Subheader>
//       <List.Item title={content} />
//     </List.Section>
//   );
// };

// export default function App() {
//   return (
//     <PaperProvider>
//       <NavigationContainer>
//         <Stack.Navigator initialRouteName="Home">
//           <Stack.Screen name="Home" component={HomeScreen} />
//           <Stack.Screen name="Details" component={DetailsScreen} />
//         </Stack.Navigator>
//       </NavigationContainer>
//     </PaperProvider>
//   );
// }
// // Main -> Blood bank, Updates, Consult, Profile
