# Shwe Lar

## Flutter Version
| name      | version |
|-----------|---------|
| `flutter` | `3.0.4` |

## Flutter Version Manangent
| name  | version |
|-------|---------|
| `fvm` | `2.3.1` |

## for intel cpu
```bash
# icon genernate
 fvm flutter pub run flutter_launcher_icons:main
#  buid runner run
 fvm flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
#  pod install 
 cd ios
 pod install

```

## for mac arch cpu

```bash
# build runner run
 fvm flutter run | grep -v "Error retrieving thread information"
 Fvm build runner gen
 fvm flutter pub get && fvm flutter pub run build_runner build --delete-conflicting-outputs
# icon launcher genernate
 fvm flutter pub run flutter_launcher_icons:main
# pod install
 cd ios
 pod deintegratfvm e --verbose 
 arch -x86_64 pod install
 pod install --verbose
```
# shwelar
