# Fit Pay

Fit Pay is a Flutter UI/UX implementation designed to help gym owners and fitness centers manage membership fees and payments. The app provides an intuitive interface for gym administrators to track payment history, handle pending fees, and manage user profiles.

## Features

- **Payment Management**: 
  - View pending fees
  - Check payment history
  - Pay outstanding fees
  - Request leave of absence
- **Profile Management**: 
  - View user details
  - Edit personal information
- **In App Notifications**: 
  - Payment reminders
  - Request status updates

## Project Structure

The project follows a standard Flutter application structure. The main UI components are located in the `lib` folder:

```
Fit-Pay/lib/
       ├── main.dart          # Entry point of the application
       ├── index.dart         # Main dashboard/home screen UI
       ├── editdetails.dart   # Profile editing interface
       ├── userdetails.dart   # User profile display UI
       └── noti.dart          # Notification and requests UI
```

## Installation

### Prerequisites

- Flutter SDK (latest version recommended)
- Dart SDK
- Android Studio / VS Code

### Setup

1. Clone the repository:
   ```
   git clone https://github.com/chrixjohn/Fit-Pay.git
   ```

2. Navigate to the project directory:
   ```
   cd Fit-Pay
   ```

3. Install dependencies:
   ```
   flutter pub get
   ```

4. Run the application:
   ```
   flutter run
   ```

## License

Fit Pay is licensed under the MIT License.