# 🛑 Stay On X

Stay on current major version of macOS.

## ⚙️ What This Does

Apple allows deferring major macOS upgrades using configuration profiles with official `com.apple.applicationaccess` keys. This repo provides a **90-day deferral profile** along with scripts to install, check status, and uninstall it.

After the 90-day deferral period expires, you will need to reinstall the profile.

<details>
<summary>🔍 What the deferral profile actually does</summary>

It uses Apple's official deferral keys:

```xml
<key>forceDelayedMajorSoftwareUpdates</key><true/>
<key>enforcedSoftwareUpdateMajorOSDeferredInstallDelay</key><integer>90</integer>
```

These settings hide major upgrades from Software Update for **up to 90 days** according to Apple's documentation. In practice, the deferral appears to continue working beyond that window — but your mileage may vary.

</details>

---

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

- [Remove the Red Badge from the System Settings Dock Icon](./docs/REMOVE_DOCK_BADGE.md) — Get rid of the persistent notification badge on the System Settings icon in your Dock

## 🧩 What's Next? (Help Wanted)

The 90-day deferral profile works well today, but there are open questions the community can help answer:

- **How long does the deferral actually last?** Apple says 90 days, but anecdotal experience suggests it may persist longer. More data points would be valuable.
- **Can we suppress the Settings badge and upgrade prompts?** The red notification badge and "Install Now" prompts are a separate annoyance.
- **Are there other safe, reversible approaches?** If you've found something that works, we'd love to hear about it.
- **What changes with new macOS versions?** Apple may change deferral behavior in future releases.

## 🧾 License

MIT
