# Remove upgrade prompts

Ged rid of the "Install Now" prompts which appears in the top-right corner of the screen.

```sh
/usr/bin/defaults write com.apple.SoftwareUpdate MajorOSUserNotificationDate -date "2035-01-01 00:00:00 +0000"
/usr/bin/defaults write com.apple.SoftwareUpdate UserNotificationDate -date "2035-01-01 00:00:00 +0000"
```
