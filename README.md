# Revisions SDK for Flutter


[therevisions.app](https://therevisions.app) | [Console](https://dash.therevisions.app) | [Pub](https://pub.dev/packages/revisions)

- **Console**: The Revisions [console](https://dash.therevisions.app) provides a notion-like experience for publishing your release notes
- **Universal compatibility**: Written in Dart, Revisions is compatible with Android, iOS, Web, macOS, Windows, Linux, and IoT
- **Free**: Revisions is free while in beta

<img width="830" alt="Revisions Logo" src="https://therevisions.app/thumbnail.png"> 

## 3-Minute Quick Start

### 1. Create an account and project

Start by visiting the Revisions Console: [Revisions Console](https://dash.therevisions.app).
Create your free account using GitHub.

Then create a project with a descriptive name.

### 2. Add Revisions to your pubspec.yaml

```bash
$ flutter pub add revisions
```

### 3. Show the timeline

```dart
import 'package:revisions/revisions.dart';

Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const RevisionsTimeline(domain: 'your-domain.therevisions.app'), // Get your domain from the Revisions Console
);
```