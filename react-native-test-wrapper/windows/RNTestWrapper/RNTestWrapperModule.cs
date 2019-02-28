using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Test.Wrapper.RNTestWrapper
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNTestWrapperModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNTestWrapperModule"/>.
        /// </summary>
        internal RNTestWrapperModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNTestWrapper";
            }
        }
    }
}
