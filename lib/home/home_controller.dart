import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/models/answer_model.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/widgets.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: 'John Emerson',
      photoUrl: 'https://avatars.githubusercontent.com/u/43749971?v=4',
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

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
    state = HomeState.success;
  }
}
