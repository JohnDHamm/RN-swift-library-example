# react-native-test-wrapper

## Getting started

`$ npm install react-native-test-wrapper --save`

### Mostly automatic installation

`$ react-native link react-native-test-wrapper`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-test-wrapper` and add `RNTestWrapper.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNTestWrapper.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.reactlibrary.RNTestWrapperPackage;` to the imports at the top of the file
  - Add `new RNTestWrapperPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-test-wrapper'
  	project(':react-native-test-wrapper').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-test-wrapper/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-test-wrapper')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNTestWrapper.sln` in `node_modules/react-native-test-wrapper/windows/RNTestWrapper.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Test.Wrapper.RNTestWrapper;` to the usings at the top of the file
  - Add `new RNTestWrapperPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNTestWrapper from 'react-native-test-wrapper';

// TODO: What to do with the module?
RNTestWrapper;
```
  