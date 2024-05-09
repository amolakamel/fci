// onboarding models
class SliderObject {
  String? title;
  String? image;

  SliderObject({this.title, this.image});
}

class SliderViewObject {
  SliderObject sliderObject;
  int numOfSlides;
  int currentIndex;
  SliderViewObject(
      {required this.sliderObject,
      required this.currentIndex,
      required this.numOfSlides});
}

class Login {
  String email;
  String password;
  int id;

  Login(this.email, this.password, this.id,);
}
