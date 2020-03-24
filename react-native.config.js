const path = require('path')

module.exports = {
  dependency: {
    platforms: {
      ios: { podspecPath: path.join(__dirname, 'FirebaseAppInstanceId.podspec') },
      android: {
        packageImportPath: 'import com.rnfirebaseappinstanceid.FirebaseAppInstanceIdPackage;',
        packageInstance: 'new FirebaseAppInstanceIdPackage()'
      }
    }
  }
}
