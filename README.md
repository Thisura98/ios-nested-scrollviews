# iOS Simple Nested Scrollviews #

<img src="https://github.com/Thisura98/ios-nested-scrollviews/blob/main/screencast.gif" width="300" />

Nested scrollviews are problematic in `UIKit` because of the following reasons.
1. Nested scrollview's scroll gestures are sometimes 'stolen' by outer scrollview.
2. Smooth scroll transition between scrollviews is not built-in.
3. Fixing this requires libraries or hijacking scroll gestures in the `UIScrollViewDelegate`.

The proposed solution for achieving this in `UIKit` is as follows.
1. Set the outer scrollview's class to `OuterScroll`.
2. Set the inner scrollview's class to `InnerScroll`.
3. Add the code, `OuterScroll.Reference.iScroll = <InnerScroll instance>`

Both `OuterScroll` and `InnerScroll` inherit from `UIScrollView`.

### Usage ###

#### 1. Setup two `UIScrollView`s where the nested one is inside the outer one.

<img src="https://github.com/Thisura98/ios-nested-scrollviews/blob/main/ib.png" width="500" />

#### 2. Create the relationship between Outer and Inner `UIScrollView`s

```swift
class ViewController: UIViewController {

    @IBOutlet private weak var outerScroll: OuterScroll!
    @IBOutlet private weak var innerScroll: InnerScroll!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Set references
        OuterScroll.Reference.iScroll = innerScroll
    }
}
```
