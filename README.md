# Resume App

A Flutter-based Resume App that allows users to create and manage professional resumes easily. The app utilizes `TextField` widgets and text controllers to input and manage user data such as personal information, education, work experience, skills, and more.

## Table of Contents

- [Features](#features)
- [Screenshots](#screenshots)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Usage](#usage)
- [TextField and TextController Overview](#textfield-and-textcontroller-overview)
- [Contributing](#contributing)
- [License](#license)

## Features

- **Create Multiple Resumes:** Create multiple resumes tailored to different job applications.
- **User Input with TextFields:** Use `TextField` widgets to enter personal information, work experience, education, skills, and more.
- **Text Editing:** Easily update and edit any section of the resume.
- **Real-Time Preview:** Preview your resume as you type.
- **PDF Export:** Export resumes to PDF format for easy sharing.
- **Responsive Design:** Works on both Android and iOS devices with a smooth, user-friendly interface.

## Screenshots

<!-- Include screenshots of the app. Example: -->
![Home Screen](path/to/home_screen.png)
![Resume Editor](path/to/resume_editor.png)

## Technologies Used

- **Flutter:** For the overall app development.
- **Dart:** Programming language used within Flutter.
- **TextField Widget:** For input fields throughout the app.
- **TextEditingController:** To manage and retrieve input text.

## Installation

Follow these steps to get the app up and running locally:

1. **Clone the repository:**

   ```bash
   git clone https://github.com/your-username/resume-app.git
   ```

2. **Navigate to the project directory:**

   ```bash
   cd resume-app
   ```

3. **Install dependencies:**

   ```bash
   flutter pub get
   ```

4. **Run the app:**

   ```bash
   flutter run
   ```

## Usage

1. **Creating a Resume:** Click on the "Create Resume" button on the home screen.
2. **Entering Data:** Use the `TextField` widgets provided in each section to input your details, such as:
   - **Name, Contact Information:** Fill out your basic details.
   - **Education:** Add your education background.
   - **Work Experience:** Enter details of your work history.
   - **Skills:** List relevant skills.
3. **Editing Fields:** Each section uses `TextEditingController` to handle text changes, allowing for easy updates.
4. **Preview and Export:** Preview your resume in real-time and export it as a PDF.

## TextField and TextController Overview

The Resume App makes extensive use of the `TextField` widget and `TextEditingController` for managing user input.

### Key Components:

- **TextField Widget:** 
  - Used for all input fields such as name, education, skills, and experience.
  - Includes customization for hints, labels, and input validation.

- **TextEditingController:**
  - Each `TextField` has an associated `TextEditingController` to retrieve and manipulate text.
  - Allows real-time updates and form validation.

### Example:

```dart
TextEditingController nameController = TextEditingController();

TextField(
  controller: nameController,
  decoration: InputDecoration(
    labelText: 'Name',
    hintText: 'Enter your full name',
  ),
);
```

This example shows a basic `TextField` setup used in the app. The `nameController` is used to manage the text input, making it easy to retrieve the data for resume creation.

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a pull request.


## Images:
<div>
 <img src="https://github.com/user-attachments/assets/2374f2f5-52f6-48b2-94b4-a95dba7f1d01"height=500px>
 <img src="https://github.com/user-attachments/assets/08975da2-b1c1-44c7-bd9c-68eeed2abafd"height=500px>
 <img src="https://github.com/user-attachments/assets/bdced778-4b36-4f16-b1ff-b43a485b6826"height=500px>
  <img src="https://github.com/user-attachments/assets/5627f5e8-4ed6-49eb-b283-8ddb5cac83b7"height=500px>
 <img src="https://github.com/user-attachments/assets/837c7ad7-0b57-484d-a62c-609e72c92906"height=500px>
 <img src="https://github.com/user-attachments/assets/ae1d8fc8-5af3-46c9-856e-46c2abe92b92"height=500px>
 <img src="https://github.com/user-attachments/assets/cfa9a4e4-cce8-45dc-a42a-79d9342b7a08"height=500px>
 <img src="https://github.com/user-attachments/assets/bcda80c1-9b6e-43c7-ac2a-5c8af030b018"height=500px>
 <img src="https://github.com/user-attachments/assets/382edee9-f95d-46d0-84f5-ac018c4f9a99"height=500px>
  <img src="https://github.com/user-attachments/assets/52dc1ba1-1814-467e-ac2d-ce9f0ebb4064"height=500px>
  <img src="https://github.com/user-attachments/assets/8f0a2c63-5ebf-4d8b-a6a9-d2f28f3adb8a"height=500px>
  <img src="https://github.com/user-attachments/assets/7009fcdb-180c-4847-a549-48b58377964d"height=500px>
  <img src="https://github.com/user-attachments/assets/86c98a5e-405d-44e9-9db9-d4c990730314"height=500px>


  
</div>



https://github.com/user-attachments/assets/521094a6-f354-48af-a10d-84ed10ede476

