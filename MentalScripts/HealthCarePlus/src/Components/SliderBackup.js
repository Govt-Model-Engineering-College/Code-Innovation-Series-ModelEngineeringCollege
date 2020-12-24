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

<ImageBackground source={home_background} style={styles.backgroundImage}>
  <Box style={styles.headerTitle}>
    <Image source={header_title} resizeMode="center" />
  </Box>
  <Box flex={2} color="white">
    <Carousel height={400} images={imgs} delay={3} />
  </Box>
  <Box flex={0.8}>
    <Box style={styles.roundedContainer} color={Theme.primary}>
      <Box style={styles.buttonContainer}>
        <TouchableOpacity style={styles.button}>
          <Text style={styles.text}>Log In</Text>
        </TouchableOpacity>
      </Box>
      <Box style={styles.buttonContainer}>
        <TouchableOpacity style={styles.button}>
          <Text style={styles.text}>Sign Up</Text>
        </TouchableOpacity>
      </Box>
    </Box>
  </Box>
</ImageBackground>;
