import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/models/answer_model.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: 'John Emerson',
      photoUrl: 'https://avatars.githubusercontent.com/u/43749971?v=4',
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
        title: 'NLW 5 Flutter',
        questions: [
          QuestionModel(title: 'Está curtindo o evento?', answers: [
            AnswerModel(title: 'Estou curtindo'),
            AnswerModel(title: 'Amando o flutter'),
            AnswerModel(title: 'Muito dala', isRight: true),
            AnswerModel(title: 'Show de bola!'),
          ])
        ],
        imagem: AppImages.blocks,
        level: Level.facil,
      )
    ];
  }
}
