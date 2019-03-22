# RN-swift-library-example
An example for testing building a RN wrapper for an iOS SDK with Pod dependency


### To run the example app (`master` branch):
1. Clone the repo
2. `cd RN-swift-library-example/exampleApp/`
3. `yarn install`
4. Copy `react-native-test-wrapper` directory to `node_modules` of exampleApp (eventually this will be `yarn add [package name]`)
5. `react-native link react-native-test-wrapper`
6. open `exampleApp.xcodeproj` in XCode and build and run (should see app screen with message of "callback message from swift")


### To run on `add_pod` branch:
1. `react-native unlink react-native-test-wrapper`
2. replace the `react-native-test-wrapper` directory in `node_modules` of exampleApp with `react-native-test-wrapper` directory of this branch
3. `react-native link react-native-test-wrapper`
4. open `exampleApp.xcworkspace` in XCode and build and run (currently failing with "NewsAPISwift" is not a module - can't seem to connect the native module to the CocoaPad)


*how master branch was created:*

1. Created library scaffold with `react-native-create-library react-native-test-wrapper` (note: from master, not current outdated npm package)

2. Created a RN example app with `react-native init exampleApp`

3. Setup library with Swift bridging (no pod dependencies yet)

4. Copy library directory to `node_modules` of exampleApp (eventually this will be `yarn add [package name]`)

5. `react-native link react-native-test-wrapper` <= confirmed that framework is added to Xcode workspace

6. add empty swift file (needed per RN docs when bridging with a Swift library)

7. test RN exampleApp

-- CONFIRMATION THAT BRIDGED LIBRARY IS WORKING (no netive dependency yet)



## End Goal:
**As a** React Native dev with little to no native dev experience,

**I want** to be able to build a RN app utilizing some native SDKs which are available as a CocoaPod/whatever the Android equivalent is,

**So that** I do not have to learn iOS/Android native development in order to build apps with the client's SDKs.

*implementation:*
1. create a new RN app via `react-native init MyProject`
2. `cd MyProject`
2. install library: `yarn add <some-react-native-library>`
3. `react-native link <some-react-native-library>`
4. `cd ios`
5. `pod init`
6. add to Podfile: `pod 'RNSomeModule', path: '../node_modules/<some-react-native-library>'`
7. `pod install`
8. in RN app: 
```javascript
const { RNSomeModule } = require('<some-react-native-library>');

RNSomeModule.someMethod();
```


