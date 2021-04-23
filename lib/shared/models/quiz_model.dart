import 'package:devquiz/shared/models/question_model.dart';

class QuizModel {
  final String title;
  final List<QuestionModel> questions;

  QuizModel({
    required this.title,
    required this.questions,
  });
}
