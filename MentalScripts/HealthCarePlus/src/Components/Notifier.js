import { Notifier, NotifierComponents, Easing } from "react-native-notifier";

// SAMPLE DATA
// {
//  title: "John Doe",
//  description: "Hello! Can you help me with notifications?",
//  duration: 0,
//  showAnimationDuration: 800,
//  showEasing: Easing.bounce,
//  onHidden: () => console.log("Hidden"),
//  onPress: () => console.log("Press"),
//  hideOnPress: false,
// }

const Notify = (data) => {
  Notifier.showNotification({ ...data, showEasing: Easing.ease });
};

export default Notify;
