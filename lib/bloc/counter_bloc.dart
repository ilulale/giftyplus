import 'package:rxdart/subjects.dart';

class CounterBloc{
  int initialVal = 0;
  BehaviorSubject<int> _subjectcounter;

  CounterBloc({this.initialVal}){
    _subjectcounter = new BehaviorSubject<int>.seeded(this.initialVal);
  }

    Stream<int> get counterObservable => _subjectcounter.stream;

    void increment(){
      initialVal++;
      _subjectcounter.add(initialVal);
    }

    void setVal(val){
      initialVal = val;
      _subjectcounter.add(val);
    }

    void dispose(){
      _subjectcounter.close();
    }
}