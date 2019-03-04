# Reference Info

The following are links to articles/repos found while trying to research the issue of how to build a library for React Native that has a CocoaPod depencency:

## Medium article 1 - Onfido SDK example
https://medium.com/mcro/how-to-create-react-native-wrappers-for-native-sdks-2ed0af35e86d

noticeable difference with `.podspec` file:

```
s.preserve_paths = 'LICENSE', 'README.md', 'package.json', 'index.js'
s.source_files   = 'ios/*.{h,m}'
```
• path in that 2nd line actually seems right here vs. what you get with react-native-create-library:

```s.source_files = "ios/**/*.{h,m}"```

• bridged code does not include Swift, only Obj-C (my library has to use Swift)

• I cloned their library repo and the example seems to work: https://github.com/MCROEngineering/react-native-onfido-sdk



## Medium article 2 - Shopify SDK example
https://medium.com/shoutem/top-lessons-we-learned-while-building-a-react-native-bridge-library-bd6485cc6212

This one mentions something about Header Search Paths that might seem important, but again, my lack of Xcode/Pods knowledge has me feeling that I may not have been following it correctly.



## Detailed example, but uses Pods to install React-Native
https://sandstorm.de/de/blog/post/react-native-managing-native-dependencies-using-xcode-and-cocoapods.html

Lots of info here that may be useful to someone with more knwoledge of iOS/Xcode than myself, but in the end I can't follow this one directly because it is using Pods to install all the React-Native dependencies instead of using `react-native init`, which is how I want any user of my library to be able to start a new project or use my library in an already existing RN project.



## React-Native docs:
https://facebook.github.io/react-native/docs/native-modules-ios

https://facebook.github.io/react-native/docs/linking-libraries-ios




## Other articles that may have an answer?
https://io.bilby91.com/posts/create-react-native-ios-native-module (seems simple implementation, but from 2017)

https://github.com/react-native-community/react-native-svg/issues/621 (React installed twice?)