# Campus Lost & Found — Assignment Report

**Course:** Mobile Application Development (SE323)  
**Assignment:** 02  
**CLO:** 2  
**Student:** Hassan Zia  
**Registration ID:** 245234

## 1. Introduction

Campus Lost & Found is a simple Flutter mobile application designed to help students view items that have been lost or found on a university campus. It presents item information in a clear list and allows the user to open a separate screen to view more details about an item.

## 2. Objectives

- Display lost and found items in an organized list.
- Show the name, location, and current status of each item.
- Allow the user to view the details of a selected item.
- Practice basic Flutter widgets and screen navigation.

## 3. Main Features

- **Item listing:** The home screen displays eight sample lost-and-found items.
- **Item information:** Each item shows its name, location, and status.
- **Details button:** A button on each item opens its details screen.
- **Details screen:** The selected item's information is displayed on a separate screen.
- **Navigation:** `Navigator.push` opens the details screen and `Navigator.pop` returns to the list.

## 4. Tools and Technologies

The application is developed using Flutter and the Dart programming language. The interface uses Material Design widgets provided by Flutter.

## 5. Application Structure

The application contains a `LostItem` data class for storing item information, a `HomeScreen` for displaying the list, and a `DetailsScreen` for showing the selected item's information. The item list is displayed with `ListView.builder`.

## 6. Working of the Application

1. The application opens on the home screen.
2. The user views the available lost-and-found items.
3. The user selects the Details button for an item.
4. The application opens a separate screen containing the selected item's details.
5. The user returns to the home screen using the back navigation.

## 7. Conclusion

The Campus Lost & Found application provides a basic way to view campus lost-and-found records. This assignment demonstrates the use of Flutter widgets, list building, data handling, and navigation between screens.

**GitHub Repository:** https://github.com/hassanzia211/campus-lost-and-found.
