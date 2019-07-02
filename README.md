# NGUIKitForMacTouchBarIssue
This project demonstrates an issue reprodudicble on Xcode 11 beta 2.

To reproduce:

1. Run the project
2. Press command-N twice to spawn two new window scenes
3. Press command-W twice to close the two new scenes

Expected:
The second window should close normally and only the original window should be visible

Actual:
The second window shows a black background and momentarily stalls, then closes normally

Note: If you return `nil` from the touchbar computed var in `ViewController`, the issue does not happen.
