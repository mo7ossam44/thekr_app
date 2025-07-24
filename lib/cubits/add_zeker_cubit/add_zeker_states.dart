abstract class AddZekerStates {}

class AddZekerInitial extends AddZekerStates {}

class AddZekerSucess extends AddZekerStates {}

class AddZekerLoading extends AddZekerStates {}

class AddZekerFaliure extends AddZekerStates {
  final String errMessage;
  AddZekerFaliure(this.errMessage);
}
