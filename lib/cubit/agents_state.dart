part of 'agents_cubit.dart';

@immutable
abstract class AgentsState {}

class AgentsInitial extends AgentsState {
  AgentsInitial();
}

class AgentsLoading extends AgentsState {
  AgentsLoading();
}

class AgentsLoaded extends AgentsState {
  List <Character> listCharacter;
  AgentsLoaded({required this.listCharacter});
  @override
  bool operator == (Object object){
    if (identical(this,object)) {
     return true;
    }
    return object is AgentsLoaded && object.listCharacter == listCharacter;
  }
  @override
  int get hashCode => listCharacter.hashCode;

}

class AgentsError extends AgentsState {
  String message;

  AgentsError({required this.message});

  @override
  bool operator == (Object object){
    if (identical(this,object)) {
      return true;
    }
    return object is AgentsError && object.message == message;
  }
  @override
  int get hashCode => message.hashCode;
}



//init
//loading
//loaded == Completed
// error
