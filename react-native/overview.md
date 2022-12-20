> React Native works similarly as react-dom. It basically allows me to run React code inside specific plataforms (such as Android, IOS)

Some key differences between react-native and react-dom
* Does not support HTML and CSS
* Does not use DOM. It uses, otherwise, it's specific native components (like <View /> instead of <div />, for example). Native components are much more performant than the DOM.
* React Native uses Custom native APIs (expo offers some of them)