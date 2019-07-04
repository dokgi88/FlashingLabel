_<p align="center">![flashinglabel_trans](https://github.com/dokgi88/dokgi88.github.io/blob/master/_images/FlashingLabel/flashinglabel_trans.png?raw=true)</p>_

# FlashingLabel

![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
![Platform](https://img.shields.io/badge/Platform-iOS-lightgrey.svg)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/dokgi88/FlashingLabel/blob/master/LICENSE)

![flashinglabel_play.gif](https://github.com/dokgi88/dokgi88.github.io/blob/master/_images/FlashingLabel/flashinglabel_play.gif?raw=true)

## Install

```swift
pod 'FlashingLabel'
```

## Example

* required
```swift
baseColor = UIColor.orange
flashingColors = [UIColor.orange.withAlphaComponent(0.5)]
flashingTime = 0.17
startFlashing()
```

* init and start flashing
```swift
let label = FlashingLabel()
label.baseColor = UIColor.orange
label.flashingColors = [UIColor.orange.withAlphaComponent(0.5)]
label.flashingTime = 0.17
label.text = "HELLO"
label.startFlashing()
```

* stop flashing
```swift
label.stopFlashing()
```

## License

FlashingLabel is available under the MIT license. See the LICENSE file for more info.
