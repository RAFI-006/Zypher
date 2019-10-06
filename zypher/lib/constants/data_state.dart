import 'dart:core';
class DataState {

}

class StateLoading extends DataState{}

class StateError extends DataState {
  final String message;

  StateError(this.message);
}

class StateInitial  extends DataState{}

class SateSuccessWithList extends DataState
{
  final List<Object> result;

  SateSuccessWithList(this.result);
}


class StateSucessWithMap extends DataState
{
  final Map<String,dynamic> result;

  StateSucessWithMap(this.result);

}


class SateEmpty extends DataState{}



