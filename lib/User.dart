import 'dart:math';

class User {
  Random random = new Random();
  List<double> sleepHours = [6.0,8.0,7.0,8.4];
  List<double> workHoursDaily = [8.0,8.4,9.1,8.3,10.2,12.0];
  List<int> sportsMin = [30,10,15,45];
  double sleep;
  int sports;
  double work;
  double sum;
  int kcal;
  List<int> foodKcal = [12,13,24,1000];
  int sportsGoal = 30;
  int currentSportsMinutes;

  int getGoal() {
    sportsGoal = 30;
    return sportsGoal;
  }

  void setGoal(int) {
    this.sportsGoal = sportsGoal;
  }

  double getSportsScore() {
    currentSportsMinutes = 30;
    double currentScore = currentSportsMinutes / sportsGoal * 100;
    return currentScore;
  }

  int setCurrentSportsMinutes(int ) {
    this.currentSportsMinutes = currentSportsMinutes;
  }

  double getSleep() {
    sleep = sleepHours.fold(0, (previous, current) => previous + current);
    double averageSleep = sleep / sleepHours.length;
    return averageSleep;
  }

  int getSports() {
    sports = sportsMin.fold(0, (previous, current) => previous + current);
    int averageSport = sports ~/ sportsMin.length;
    return averageSport;
  }

  double getWork() {
    work = workHoursDaily.fold(0, (previous, current) => previous + current);
    double averageWork = work / workHoursDaily.length;
    return averageWork;
  }

  double getSumWork() {
    sum = workHoursDaily.fold(0, (previous, current) => previous + current);
    return sum;
  }

  void setSleep(double sleep) {
    sleepHours.add(sleep);
  }

  void setSports(int sports) {
    this.sports = sports;
  }

  void setWork(double work) {
    workHoursDaily.add(work);
  }

  int getKcal() {
    kcal = foodKcal.fold(0, (previous, current) => previous + current);
    return kcal;
  }

  String getTimeStringFromDouble(double value) {
    if (value < 0) return 'Invalid Value';
    int flooredValue = value.floor();
    double decimalValue = value - flooredValue;
    String hourValue = getHourString(flooredValue);
    String minuteString = getMinuteString(decimalValue);

    return '$hourValue h $minuteString min.';
  }

  String getMinuteString(double decimalValue) {
    return '${(decimalValue * 60).toInt()}'.padLeft(2, '0');
  }

  String getHourString(int flooredValue) {
    return '${flooredValue % 24}';
  }
}