# RN-swift-library-example
An example for testing building a RN wrapper for an iOS SDK with Pod dependency

steps taken:

1. Created library scaffold with `react-native-create-library react-native-test-wrapper` (note: from master, not current outdated npm package)

2. Created a RN example app with `react-native init exampleApp`

3. Setup library with Swift bridging (no pod dependencies yet)

4. Copy library directory to `node_modules` of exampleApp (eventually this will be `yarn add [package name]`)

5. `react-native link react-native-test-wrapper` <= confirmed that framework is added to Xcode workspace

6. add empty swift file (needed per RN docs when bridging with a Swift library)

7. test bridge to library with importing library into RN exampleApp

-- CONFIRMATION THAT BRIDGED LIBRARY IS WORKING (no netive dependency yet)


next up:

• add NewsAPISwift dependency to library `.podspec` and expose `newsAPI.getSources` method in Swift


