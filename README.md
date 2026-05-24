# ✅ Task Management System – SwiftUI

A SwiftUI iOS app for managing tasks, built with **MVVM architecture**. Users can create, edit, complete, and search tasks with a clean and intuitive interface.

---

## 📌 Features

- ➕ **Add Tasks** – Create new tasks with title and due date
- ✏️ **Edit Tasks** – Modify existing task details
- ✅ **Toggle Completion** – Mark tasks as complete or incomplete
- 🔍 **Search Tasks** – Filter tasks by name with case-insensitive search
- 🆔 **UUID-based Identification** – Unique ID for every task

---

## 🛠️ Tech Stack

| Category    | Technology     |
|-------------|----------------|
| Language    | Swift 5.7      |
| Framework   | SwiftUI 2.0    |
| Architecture| MVVM           |
| Platform    | iOS 16.0+      |

---

## 📂 Project Structure

```
Task-Management-system-using-swiftUI/
│
├── Models/
│   └── Task.swift               # Task data model with UUID
│
├── ViewModels/
│   └── TaskViewModel.swift      # Business logic with @Published
│
├── Views/
│   ├── ContentView.swift        # Main task list view
│   ├── AddTaskView.swift        # Add/Edit task form
│   └── TaskRowView.swift        # Individual task row
│
└── TaskManagementApp.swift      # App entry point
```

---

## 🚀 Getting Started

### Prerequisites
- Xcode 14+
- iOS 16.0+ simulator or device

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/rinshamol/Task-Management-system-using-swiftUI.git
```

### 2️⃣ Open in Xcode
```bash
open Task-Management-system-using-swiftUI.xcodeproj
```

### 3️⃣ Run the App
Select a simulator and press `Cmd + R`

---

## ⚠️ Known Limitations

- No data persistence (tasks reset on app relaunch)
- Due date stored as String instead of Date type
- No input validation for empty task fields

---

## 🔮 Roadmap

- [ ] Core Data integration for persistent storage
- [ ] Convert dueDate to proper Date type with DatePicker
- [ ] Input validation for task fields
- [ ] Swipe-to-delete with EditButton
- [ ] Due date sorting and filtering

---

## 👩‍💻 Author

**Rinsha Mol K S** – Software Developer  
GitHub: [@rinshamol](https://github.com/rinshamol)

---

## 📝 License

This project is for educational purposes.
