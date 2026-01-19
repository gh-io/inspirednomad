```sh
InspiredNomad/
├── InspiredNomadApp/
│   ├── AppDelegate.swift
│   ├── ContentView.swift
│   └── Assets.xcassets
│
├── GoogleService-Info.plist   ❌ ignored
├── Info.plist
│
├── .gitignore
├── README.md
├── InspiredNomad.xcodeproj
└── .github/
    └── workflows/
        └── ios.yml
```


---
```bash
cd your-xcode-project
git init
git add .
git commit -m "Initial iOS app with Firebase"
git remote add origin https://github.com/USERNAME/InspiredNomad.git
git branch -M main
git push -u origin main
```

```.gitignore
# Xcode
DerivedData/
*.xcuserstate
*.xcuserdata/
*.xcworkspace

# Firebase secrets
GoogleService-Info.plist

# macOS
.DS_Store
```


```code
InspiredNomad/
├── InspiredNomadApp/
│   ├── AppDelegate.swift
│   ├── InspiredNomadApp.swift
│   ├── ContentView.swift
│   └── Assets.xcassets
│
├── InspiredNomad.xcodeproj
│
├── Info.plist
├── GoogleService-Info.plist.example
│
├── .gitignore
├── README.md
│
└── .github/
    └── workflows/
        └── ios.yml
