part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ChangeThemeEvent extends ThemeEvent {
  final int randomInt;
  const ChangeThemeEvent(this.randomInt);

  @override
  String toString() {
    // TODO: implement toString
    return 'ChangeTheme(Random int is : $randomInt)';
  }

  @override
  // TODO: implement props
  List<Object> get props => [randomInt];
}
