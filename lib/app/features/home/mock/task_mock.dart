import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TaskMock {
  final String title;
  final String description;
  final int quantityExercice;
  final SvgPicture icon;
  final String urlRepository;
  TaskMock({
    required this.title,
    required this.description,
    required this.quantityExercice,
    required this.icon,
    required this.urlRepository,
  });
}

TaskMock playground = TaskMock(
  urlRepository: '',
  title: 'Playground',
  description: 'Ambiente destinado a testes e estudos em geral',
  quantityExercice: 2,
  icon: SvgPicture.asset('lib/assets/svg/toys.svg'),
);

TaskMock animation = TaskMock(
  urlRepository: '',
  title: 'Animações',
  description: 'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
  quantityExercice: 4,
  icon: SvgPicture.asset(
    'lib/assets/svg/running1.svg',
  ),
);

TaskMock mockUp = TaskMock(
    urlRepository: '',
    title: 'Leitura de MockUp',
    description: 'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
    quantityExercice: 2,
    icon: SvgPicture.asset(
      'lib/assets/svg/glasses.svg',
    ));
final List<TaskMock> listTasks = [
  playground,
  mockUp,
  animation,
];
