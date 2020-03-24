import { NativeModules } from 'react-native'

const { FirebaseAppInstanceId } = NativeModules

export function getId() {
  return FirebaseAppInstanceId.getId()
}

export default FirebaseAppInstanceId
