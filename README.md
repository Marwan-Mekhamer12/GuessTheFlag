# GuessTheFlag

📱 About The Project

**Guess The Flag** is an interactive iOS game that tests your knowledge of world flags. This is my second project while learning SwiftUI, transitioning from UIKit to modern declarative UI development.

The game presents 3 random flags and asks the player to identify the correct flag for a given country. After answering all 12 countries, the game automatically resets with a new flag order for endless replayability!

### 🎮 Game Features

- ✅ **12 Country Flags** - Estonia, France, Germany, Ireland, Italy, Monaco, Nigeria, Poland, Spain, UK, Ukraine, US
- ✅ **Real-time Score Tracking** - Earn points for each correct answer
- ✅ **Automatic Game Reset** - Game restarts after completing all flags
- ✅ **Interactive Alerts** - Immediate feedback for correct/wrong answers
- ✅ **Beautiful UI** - Gradient backgrounds with iOS material design
- ✅ **Randomized Questions** - Different flag order each game session

### 🎯 How to Play

1. Read the country name displayed at the top
2. Tap on the flag you believe is correct from the 3 options
3. Get instant feedback (Correct! 🥇 or Wrong! ❌)
4. Continue until you've seen all 12 flags
5. Game automatically resets with a fresh flag order!

---
### Key SwiftUI Concepts Used

| Concept | Purpose |
|---------|---------|
| `@State` | Reactive state management for UI updates |
| `ZStack` | Layered view hierarchy (gradient background) |
| `VStack` | Vertical arrangement of UI elements |
| `ForEach` | Dynamic button generation for flags |
| `.alert()` | Declarative alert presentation |
| `LinearGradient` | Custom background styling |
| `.regularMaterial` | iOS material design effect |
