import 'package:devquiz/core/app_gradients.dart';
import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            decoration: BoxDecoration(gradient: AppGradients.linear),
            height: 250,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Olá',
                      style: AppTextStyles.title,
                      children: [
                        TextSpan(
                          text: 'John Emerson',
                          style: AppTextStyles.titleBold,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Olá, John Emerson',
                    style: AppTextStyles.title,
                  ),
                  Container(
                    width: 58,
                    height: 58,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://avatars.githubusercontent.com/u/43749971?v=4'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
}
