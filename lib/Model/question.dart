//first step create model

class QuestionModel {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  const QuestionModel({
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
  });
}

const List<QuestionModel> questions = [
  QuestionModel(
      question: "What is Flutter?",
      options: [
        "a.Both B and C",
        "b.Flutter is an open-source UI toolkit",
        "c.Flutter is an open-source programming language for cross-platform appliation",
        "d.Flutters is a DBMS toolkit",
      ],
      correctAnswerIndex: 0),
  QuestionModel(
      question:
          "Who developed the Flutter Framework and continues to maintain it today?",
      options: [
        "a.Google",
        "b.Facebook",
        "c.Microsoft",
        "d.Oracle",
      ],
      correctAnswerIndex: 0),
  QuestionModel(
      question: 'What are the main building blocks of Flutter UIs?',
      options: [
        'a.Widgets',
        'b.Components',
        'c.Blocks',
        'd.Functions',
      ],
      correctAnswerIndex: 0),
  QuestionModel(
      question: 'What is the main function responsible for in a Flutter app?',
      options: [
        'a.Initializing the app state',
        'b.Defining the app UI',
        'c.Handling user input',
        'd.Starting the app execution',
      ],
      correctAnswerIndex: 3),
  QuestionModel(
      question:
          'Which package management tool is used in Flutter for adding external dependencies to a project?',
      options: [
        'a.Flutter Package Manager (FPM)',
        'b.Dart Package Manager (DPM)',
        'c.Flutter Package Pub (FPP)',
        'd.Dart Package Pub (DPP)',
      ],
      correctAnswerIndex: 3),
  QuestionModel(
      question: 'What does "Hot Reload" do in Flutter development?',
      options: [
        'a.It restarts the entire app',
        'b.It recompiles the entire app',
        'c.It updates the UI without restarting the app',
        'd.It clears the app cache',
      ],
      correctAnswerIndex: 2),
  QuestionModel(
      question:
          'Which command is used to create a new Flutter project from the command line?',
      options: [
        'a. flutter create',
        'b.flutter new',
        'c.flutter start',
        'd.flutter init',
      ],
      correctAnswerIndex: 0),
  QuestionModel(
      question: 'What is a "Widget" in Flutter?',
      options: [
        'a.A small application',
        'b. A user interface component',
        'c. A cloud storage service',
        'd.A database schema',
      ],
      correctAnswerIndex: 1),
  QuestionModel(
      question:
          'Which IDEs (Integrated Development Environments) are commonly used for Flutter development?',
      options: [
        'a.Visual Studio Code and IntelliJ IDEA',
        'b. Eclipse and Android Studio',
        'c.Xcode and Android Studio',
        'd. Sublime Text and Atom',
      ],
      correctAnswerIndex: 0),
  QuestionModel(
      question: 'What is the name of the UI toolkit provided by Flutter?',
      options: [
        'a.Flutter UI',
        'b. Dart UI',
        'c. Flutter Material',
        'd.Flutter Widgets',
      ],
      correctAnswerIndex: 3)
];
