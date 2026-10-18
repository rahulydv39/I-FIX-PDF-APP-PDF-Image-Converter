# I FIX PDF — PDF & Image Converter

**I FIX PDF** is an all-in-one PDF and image utility application built with Flutter. It helps users convert, resize, compress, scan, and manage documents and images from a single application.

The app is designed to make everyday document preparation easier, especially for students, job applicants, office workers, and anyone who needs to prepare files for online forms, assignments, or document submissions.

---

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Use Cases](#use-cases)
- [Technology Stack](#technology-stack)
- [Application Workflow](#application-workflow)
- [Getting Started](#getting-started)
- [Project Setup](#project-setup)
- [Running the Application](#running-the-application)
- [Building for Android](#building-for-android)
- [Permissions and Privacy](#permissions-and-privacy)
- [Monetization](#monetization)
- [Project Structure](#project-structure)
- [Testing and Quality Assurance](#testing-and-quality-assurance)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)
- [Support](#support)

---

## Overview

Preparing documents for online applications often requires multiple tools. Users may need to convert photographs into PDFs, reduce image file sizes, resize images to specific dimensions, or merge several documents into one file.

I FIX PDF brings these commonly needed utilities together in one convenient application.

### Key objectives

- Simplify PDF and image conversion.
- Make image resizing and compression accessible to everyday users.
- Help users prepare images for online forms with file-size restrictions.
- Provide convenient document scanning, exporting, and sharing.
- Keep frequently used document utilities in one application.
- Deliver a straightforward mobile experience using Flutter.

**Application name:** I FIX PDF  
**Android application ID:** `com.fileconverter.file_converter`  
**Platform:** Android  
**Framework:** Flutter  
**Programming language:** Dart

---

## Features

### 1. Photo to PDF

Convert one or multiple selected photographs into a PDF document.

Features include:

- Select images from the device.
- Combine multiple images into a single PDF.
- Generate PDF documents from photographs.
- Save generated documents to the device.
- Export and share created PDF files.

**Useful for:** assignments, application documents, scanned notes, certificates, and other paper-based records.

### 2. Photo to Photo

Convert and process images using the available image utilities.

Features include:

- Select an input image.
- Convert between supported image formats.
- Resize images to the required dimensions.
- Compress images to reduce file size.
- Configure target file sizes where supported.
- Save and share the processed output.

The Photo to Photo workflow is intended for processing an individual image at a time.

### 3. Image Resizing

Resize images to meet specific dimension requirements.

Supported dimension-entry options depend on the available controls in the application, including:

- Pixel-based dimensions.
- Centimeter-based dimensions.
- Inch-based dimensions.
- Aspect-ratio locking to preserve image proportions.

Aspect-ratio locking helps maintain the original proportions when changing an image's width or height.

### 4. Image Compression and Target File Size

Reduce image file sizes for upload requirements and storage efficiency.

Features include:

- Image compression.
- Target-size options where supported.
- File-size-focused image preparation.
- Output file saving and sharing.

This is especially useful when an online form specifies a maximum image size, such as 40 KB.

**Note:** Actual output sizes depend on the input image, image content, dimensions, format, and compression settings. A target-size setting should not be interpreted as a guarantee that every image can reach the exact requested size.

### 5. PDF Tools

The application includes PDF-related utilities intended to simplify common document workflows.

Available functionality includes:

- Creating PDFs from images.
- Merging PDF documents.
- Accessing supported PDF conversion workflows.
- Saving and sharing generated files.

The precise operations available depend on the current implementation and supported input formats.

### 6. Document Scanner

Use the device camera to capture physical documents and create digital copies.

The scanning workflow is intended to help users digitize paper documents without requiring a separate document-scanning application.

Camera access is used when the relevant scanning functionality is requested.

### 7. File Saving, Export, and Sharing

After processing, users can save their generated files and share them through compatible applications.

The application aims to provide:

- Local output-file storage.
- Access to previously generated files.
- File export.
- Sharing through Android-compatible applications.

Correct file paths and valid output files are important to ensure that saved files can be opened and shared successfully.

### 8. Conversion History

The application includes a history workflow for accessing previously processed files.

This helps users locate earlier conversions without repeating the entire process.

### 9. Storage Usage

Storage Usage is intended to help users understand the space occupied by files managed by the application.

Its displayed values should reflect the files and storage locations that the feature actually measures.

### 10. User Authentication

Firebase Authentication is part of the application's technology stack for supported authentication workflows.

Authentication availability depends on the configured sign-in providers and Firebase project settings.

### 11. App Rating and User Feedback

The application includes a Rate App action intended to direct users to its Google Play listing so they can provide feedback.

---

## Use Cases

I FIX PDF is useful for several everyday situations.

| Use case | How the app helps |
|---|---|
| Online job applications | Resize and compress photographs and documents |
| Student assignments | Combine photographs into PDF documents |
| Government and online forms | Prepare images for file-size requirements |
| Office work | Create, merge, and share PDF files |
| Document digitization | Capture paper documents using the camera |
| Image preparation | Convert formats and adjust dimensions |
| File management | Save and revisit processed documents |

---

## Technology Stack

The project uses the following technologies and libraries for its supported functionality.

| Technology | Purpose |
|---|---|
| Flutter | Cross-platform application framework |
| Dart | Application programming language |
| Firebase Authentication | User authentication |
| Google Mobile Ads | Advertising integration |
| `in_app_purchase` | In-app purchase integration |
| `syncfusion_flutter_pdf` | PDF-related processing functionality |
| `flutter_image_compress` | Image compression |
| Android SDK | Android platform integration |
| Gradle | Android build system |

The exact dependency versions are managed in `pubspec.yaml` and the Android Gradle configuration files.

### Development environment

Recommended development tools include:

- Flutter SDK compatible with the project.
- Dart SDK supplied by Flutter.
- Android SDK and platform tools.
- Java Development Kit compatible with the project's Gradle configuration.
- Android Studio or another editor capable of working with Flutter.
- Git for source control.

---

## Application Workflow

The general workflow is:

1. Open I FIX PDF.
2. Choose the required utility.
3. Select an input image or document, or capture a document using the camera.
4. Configure available options such as dimensions, output format, or target file size.
5. Start the conversion or processing operation.
6. Save the resulting file.
7. Open, export, or share the generated output.

The precise steps and available options vary by feature.

---

## Getting Started

### Prerequisites

Before setting up the project, install:

1. Git.
2. Flutter.
3. The Android SDK.
4. A compatible JDK.
5. An editor such as Android Studio or Antigravity.

Verify that Flutter is correctly installed:

```bash
flutter --version
flutter doctor
```

Resolve any environment issues relevant to Android development before building the project.

### Clone the repository

Replace `YOUR_GITHUB_USERNAME` with the actual GitHub username or organization that owns the repository.

```bash
git clone https://github.com/YOUR_GITHUB_USERNAME/YOUR_REPOSITORY.git
```

Navigate into the project directory:

```bash
cd YOUR_REPOSITORY
```

### Install dependencies

```bash
flutter pub get
```

This downloads the Dart and Flutter packages declared in `pubspec.yaml`.

### Configure Firebase

If you are setting up the project in a new development environment, configure Firebase using the Firebase project associated with the application.

Typical setup tasks include:

- Registering the Android application with Firebase.
- Using the correct Android application ID.
- Providing the appropriate Firebase configuration.
- Enabling the authentication providers used by the application.
- Verifying that the required Firebase services are configured.

Do not commit private credentials, signing keys, or sensitive configuration files to a public repository.

**Important:** Use the existing Firebase configuration when working with the original project. Do not create a replacement Firebase project unless there is a specific reason to do so.

---

## Running the Application

Connect an Android device with USB debugging enabled, or start an Android emulator.

Check that Flutter recognizes the device:

```bash
flutter devices
```

Run the application:

```bash
flutter run
```

For development diagnostics, use:

```bash
flutter analyze
```

If the project contains automated tests, run them using:

```bash
flutter test
```

Resolve relevant errors before preparing a release build.

---

## Building for Android

### Build an APK

To generate an APK for direct installation or device testing:

```bash
flutter build apk --release
```

The generated APK is normally located at:

```text
build/app/outputs/flutter-apk/app-release.apk
```

### Build an Android App Bundle

To prepare a bundle for Google Play:

```bash
flutter build appbundle --release
```

The generated AAB is normally located at:

```text
build/app/outputs/bundle/release/app.aab
```

### Versioning

The application's version and Android version code are configured in `pubspec.yaml`.

For example:

```yaml
version: 1.0.2+11
```

Here:

- `1.0.2` is the user-facing version name.
- `11` is the Android version code.

Every new Google Play upload must use a version code that has not previously been used for an uploaded artifact.

Before publishing:

1. Check the latest version code in Google Play Console.
2. Increment the version code appropriately.
3. Build the release AAB.
4. Test the release build.
5. Upload it to the intended testing track or release track.

### Signing

Release builds must use the appropriate Android signing configuration.

Keep upload keystores and private signing properties secure. Never publish private keystore files or passwords in a public Git repository.

---

## Permissions and Privacy

I FIX PDF requests device access for features that need it, such as image selection and document scanning.

### Photo selection

The app should use an appropriate system photo picker or equivalent selected-photo access mechanism where possible.

Users should be able to select the photographs required for a conversion without granting unnecessary full-library access.

### Camera

Camera access is required for supported document-scanning functionality.

### Storage and exported files

Storage access depends on the Android version and the particular operation. The application should use Android's supported file-selection and export mechanisms instead of requesting broad access unnecessarily.

### Privacy principles

- Request permissions when needed by a feature.
- Avoid requesting unnecessary access to personal files.
- Keep signing credentials and secrets out of source control.
- Handle permission denial gracefully.
- Allow users to understand why a permission is needed.

Review the actual Android manifest and permission-handling implementation before making permission-related changes.

---

## Monetization

I FIX PDF includes monetization integrations intended to support the application's continued development.

### Advertising

Google Mobile Ads is used for supported advertising placements.

Advertising behavior depends on the configured ad units, consent requirements, and ad-serving configuration.

### In-app purchases

The application integrates the Flutter in-app purchase system for supported purchase functionality.

Purchase products, prices, entitlements, and billing configuration depend on the application's implementation and Google Play Console configuration.

Test purchases using the appropriate testing configuration before releasing billing-related changes.

---

## Project Structure

The exact directory layout may evolve as the project develops. A Flutter project commonly contains the following files and directories:

```text
I-FIX-PDF/
├── android/                   # Android platform configuration
├── ios/                       # iOS platform configuration, if maintained
├── lib/                       # Dart application source code
├── test/                      # Automated tests, if present
├── assets/                    # Application assets, if configured
├── pubspec.yaml               # Dependencies and app version
├── pubspec.lock               # Resolved dependency versions
├── analysis_options.yaml      # Dart analyzer configuration
└── README.md                  # Project documentation
```

This is a general reference structure, not a verified inventory of every directory in the current repository.

---

## Testing and Quality Assurance

Before publishing a new version, validate the affected workflows.

### Core functionality

- [ ] Photo selection works.
- [ ] Photo to PDF supports multiple images.
- [ ] Photo to Photo processes one input image.
- [ ] Image resizing produces the expected dimensions.
- [ ] Aspect-ratio locking behaves correctly.
- [ ] Compression and target-size options behave as expected.
- [ ] PDF merging produces a usable output file.
- [ ] Document scanning works on supported devices.
- [ ] Generated files can be saved and opened.
- [ ] Export and sharing work.
- [ ] Conversion history behaves correctly.
- [ ] Storage Usage displays sensible results.
- [ ] Rate App opens the appropriate store listing.
- [ ] Android back navigation behaves correctly.
- [ ] Permission denial does not crash the application.

### Release validation

Before uploading a release:

```bash
flutter pub get
flutter analyze
flutter test
flutter build appbundle --release
```

These commands should be run from the project root. If no automated tests are present, `flutter test` may have no tests to execute.

Also verify the release bundle's permissions, version code, signing configuration, and Google Play policy declarations.

---

## Troubleshooting

### Flutter dependencies fail

Run:

```bash
flutter pub get
```

Inspect dependency conflicts and use versions compatible with the existing Flutter SDK and project configuration.

### Android build fails

Run:

```bash
flutter doctor
flutter analyze
```

Review the Gradle output and resolve the specific reported issue. Avoid upgrading unrelated Android Gradle Plugin, Kotlin, or Gradle versions without a reason.

### Gallery says permission denied

Inspect the image-picker implementation and permission checks. A gallery selection workflow should not be blocked by an obsolete broad-storage permission check when the system photo picker can provide the required access.

### Files cannot be opened or shared

Check the output path, whether the file was actually created, the file's size and format, and the URI or file-provider configuration used for sharing.

### In-app purchases fail

Verify that the product IDs, Google Play product configuration, tester accounts, billing dependency, and purchase-verification logic are correctly configured.

### Release upload is rejected

Check the version code, signing certificate, target SDK requirements, declared permissions, and any errors displayed in Google Play Console.

---

## Contributing

Contributions that improve reliability, usability, accessibility, or documentation are welcome.

A typical contribution workflow is:

1. Fork the repository, if public contributions are enabled.
2. Create a branch for your change.
3. Implement a focused fix or improvement.
4. Run the relevant tests and static analysis.
5. Review your changes for unrelated modifications.
6. Submit a pull request describing the problem and solution.

Keep changes focused and avoid introducing regressions into existing conversion workflows.

---

## License

The license for this project has not been specified in this README.

Before publishing the repository publicly, choose an appropriate license and add the corresponding license file. Do not assume that source code is freely reusable merely because a repository is publicly accessible.

---

## Support

For application support, contact:

**Email:** [ifixpdf.support@gmail.com](mailto:ifixpdf.support@gmail.com)

When reporting a bug, include:

- Device model and Android version.
- Application version.
- Steps to reproduce the problem.
- Expected behavior.
- Actual behavior.
- Error messages or screenshots, when available.

Avoid including passwords, private credentials, or personal documents in bug reports.

---

## Project Summary

I FIX PDF brings PDF creation, image conversion, resizing, compression, document scanning, and file management into a single Flutter application.

The project focuses on practical document workflows, helping users prepare images and PDFs for everyday tasks with fewer separate tools.

**I FIX PDF — Fix, convert, resize, compress, and manage your files in one place.**
