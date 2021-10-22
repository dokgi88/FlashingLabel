_<p align="center">![flashinglabel_trans](https://github.com/dokgi88/dokgi88.github.io/blob/master/_images/FlashingLabel/flashinglabel_trans.png?raw=true)</p>_

# FlashingLabel

![Swift](https://img.shields.io/badge/Swift-5.0-FA7343.svg?&style=flat-square&logo=Swift&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-iOS-000000.svg?&style=flat-square&logo=iOS&logoColor=white)
[![License](https://img.shields.io/badge/license-MIT-green.svg?&style=flat-square)](https://github.com/dokgi88/FlashingLabel/blob/master/LICENSE)

![flashinglabel_new_white.gif](https://github.com/dokgi88/dokgi88.github.io/blob/master/_images/FlashingLabel/flashinglabel_new_white.gif?raw=true)
![flashinglabel_new_black.gif](https://github.com/dokgi88/dokgi88.github.io/blob/master/_images/FlashingLabel/flashinglabel_new_black.gif?raw=true)

## Install

```swift
pod 'FlashingLabel'
```

## How to use

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

* infinite mode

![flashinglabel_infinite.gif](https://github.com/dokgi88/dokgi88.github.io/blob/master/_images/FlashingLabel/flashinglabel_infinite.gif?raw=true)
```swift
label.flashingColors = [.orange, .purple]
label.isInfinite = true
```

* stop flashing
```swift
label.stopFlashing()
```

## License

FlashingLabel is available under the MIT license. See the LICENSE file for more info.
