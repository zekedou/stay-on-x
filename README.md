# 🛑 Stay On X

Stay on current major version of macOS.

---

## Details

<details>
<summary>🔍 How it works?</summary>

It uses configuration profiles to defer major macOS upgrades.

```xml
<key>forceDelayedMajorSoftwareUpdates</key><true/>
<key>enforcedSoftwareUpdateMajorOSDeferredInstallDelay</key><integer>90</integer>
```

Above settings hide major upgrades from Software Update for **up to 90 days** according to Apple's documentation. In practice, the deferral appears to continue working beyond that window — but your mileage may vary.

After the deferral period expires, you will need to reinstall the profile.

</details>

<details>
<summary>💀 Bad news!</summary>

All values for SoftwareUpdate, the payload that configures the software update policy, [appear to be depreciated in macOS 26](https://developer.apple.com/documentation/devicemanagement/softwareupdate).

This means this project is only useful for macOS versions prior to macOS 26.

</details>

## 🧰 Quick Start

### 1. Clone the repo

```bash
git clone https://github.com/zekedou/stay-on-x.git
cd stay-on-x
```

### 2. Install it

The script will generate unique identifiers to prevent conflicts and attempt to install the profile.

```bash
./scripts/install-profile.sh
```

> [!NOTE]
> On recent macOS versions, silent installation may be blocked. If the script opens **System Settings**, locate the **"Profiles"** (or "Downloaded Profile") notification and click **Install** manually to complete the process.

### 3. Verify status

```bash
./scripts/status.sh
```

### 4. Uninstall it

```bash
./scripts/uninstall-profile.sh
```

## 📖 Guides

- [Remove the Red Badge from the System Settings Dock Icon](./guides/REMOVE_DOCK_BADGE.md)
- [Remove upgrade prompts](./guides/REMOVE_UPGRADE_PROMPTS.md)

## 🧾 License

MIT
