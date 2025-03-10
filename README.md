BlueStack Amazon Mediation Adapter for iOS platform

# BlueStackAmazonAdapter

Using BlueStackAmazonAdapter you will be able to show Amazon ads through BlueStack SDK. 

## Supported ad formats
- Banner/MREC
- Interstitial
- Rewarded

## Requirements
- Xcode 15.1
- iOS: 12.2

## Integrate BlueStackAmazonAdapter in your application project

### Using Cocoapods
In the `Podfile` of your application project add `BlueStackAmazonAdapter` dependency

```shell
pod 'BlueStackAmazonAdapter'
```
and run `pod install --repo-update` in you terminal.

### Using Swift Package Manager (SPM)

- Go to the project settings and select `Package Dependencies`
- Search for https://github.com/azerion/BlueStack-Amazon-Adapter.git and add `BlueStackAmazonAdapter` to your target.

**Note:** Add `-ObjC` to you `Other Linker Flags` of target build settings. 

### Documentation

Please visit https://developers.bluestack.app/ios/mediation/primairy/supported-networks#amazon-in-app-bidding