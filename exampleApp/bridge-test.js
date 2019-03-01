import React, {Component} from 'react';
import {StyleSheet, Text, View} from 'react-native';

const { RNTestWrapper } = require('react-native-test-wrapper');

type Props = {};
export default class BridgeTest extends Component<Props> {

  constructor(props) {
    super(props);
    this.state = {
      callbackMsg: ""
    }
  }

  componentDidMount() {
    console.log("test", RNTestWrapper);
    RNTestWrapper.callbackMethod(res => {
      console.log("testing callback: ", res);
      this.setState({callbackMsg: res});
    })
    this.getSources()
  }

  getSources() {
    RNTestWrapper.getSources()
      .then(sources => {
        console.log("getSources res", sources);
        // this.setState({sources})
      })
      .catch(e => console.log(e.message, e.code))
  }

  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>Bridge Test</Text>
        <Text style={styles.instructions}>{this.state.callbackMsg}</Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});
