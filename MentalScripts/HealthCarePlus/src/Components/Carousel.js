// USE THE UNCOMMENTED CODE
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
</View>;

// import React from "react";
// import { StyleSheet, View, Image } from "react-native";
// import Swiper from "react-native-swiper";
// import Theme from "../Theme/Theme";

// // ACCEPTS AN ARRAY OF IMAGES AS CHILD
// // PROPS : images: [], height: DPI, delay: seconds

// export default function Carousel(props) {
//   return (
//     <View style={(styles.sliderContainer, { height: props.height })}>
//       <Swiper
//         autoplay
//         autoplayTimeout={props.delay}
//         scrollEnabled={false}
//         height={props.height}
//         activeDotColor={Theme.primary}
//       >
//         {props.images.map(function (image) {
//           return (
//             <View style={styles.slide}>
//               <Image
//                 key={image}
//                 source={image}
//                 resizeMode="contain"
//                 style={styles.sliderImage}
//               />
//             </View>
//           );
//         })}
//       </Swiper>
//     </View>
//   );
// }

const styles = StyleSheet.create({
  sliderContainer: {
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
});

// USAGE EXAMPLE

// <Carousel height={400} images={imgs} delay={3} />

// <Carousel height={400} delay={3}>
// <Image source={app_features} resizeMode="cover" style={styles.sliderImage} />
// <Image
//   source={blood_donation}
//   resizeMode="cover"
//   style={styles.sliderImage}
// />
// </Carousel>;
