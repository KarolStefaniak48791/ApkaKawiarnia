import 'package:flutter/material.dart';
import 'coffee.dart';

class Shop extends ChangeNotifier {
  final List<Coffee> _coffeeMenu = [
    Coffee(
        name: "Espresso",
        price: "12.00",
        imagePath: "lib/images/kawa.png",
        rating: "4.9",
        description:
            "Intensywna dawka energii zamknięta w małej filiżance. Silne espresso o pełnym smaku, gotowe, by pobudzić zmysły."),
    Coffee(
        name: "Doppio",
        price: "14.00",
        imagePath: "lib/images/kawa2.png",
        rating: "4.9",
        description:
            "Podwójna dawka espresso, podwójna intensywność. Doppio - dla prawdziwych miłośników mocnego doświadczenia."),
    Coffee(
        name: "Americano",
        price: "14.00",
        imagePath: "lib/images/kawa3.png",
        rating: "4.9",
        description:
            "Rozcieńczone espresso, lekkość kawy amerykańskiej z mocą włoskiego espresso. Amerykański kompromis dla smakoszy."),
    Coffee(
        name: "Macchiato",
        price: "14.00",
        imagePath: "lib/images/kawa4.png",
        rating: "4.9",
        description:
            "Subtelne espresso z delikatnym akcentem mleka. Macchiato - szczypta słodyczy w intensywnym doświadczeniu kawowym."),
    Coffee(
        name: "Latte Cream",
        price: "16.00",
        imagePath: "lib/images/kawa5.png",
        rating: "4.9",
        description:
            "Klasyczne latte z dodatkiem kremowego luksusu. Delikatność mlecznej mieszanki spotyka się z gładkością śmietanki."),
    Coffee(
        name: "Cappuccino",
        price: "14.00",
        imagePath: "lib/images/kawa6.png",
        rating: "4.9",
        description:
            "Harmoniczne połączenie espresso, spienionego mleka i delikatnej pianki. Cappuccino - równowaga smaku i tekstury."),
    Coffee(
        name: "Latte",
        price: "14.00",
        imagePath: "lib/images/kawa7.png",
        rating: "4.9",
        description:
            "Gładkie espresso z dużą ilością mleka, tworzące aksamitną konsystencję. Latte - dla tych, którzy cenią delikatność w każdym łyku."),
    Coffee(
        name: "Frappe",
        price: "16.00",
        imagePath: "lib/images/kawa8.png",
        rating: "4.9",
        description:
            "Lekkość i orzeźwienie w jednym. Frappe - schłodzone espresso z lodem, idealne na gorące dni."),
    Coffee(
        name: "Irish Coffee",
        price: "19.00",
        imagePath: "lib/images/kawa9.png",
        rating: "4.9",
        description:
            "Espresso spotyka się z nutą irlandzkiego charakteru. Irish Coffee - klasyczny trunek, łączący moc kawy z subtelnym akcentem alkoholu."),
    Coffee(
        name: "Iced Carmel",
        price: "21.00",
        imagePath: "lib/images/kawa10.png",
        rating: "4.9",
        description:
            "Harmonijne połączenie intensywnego espresso, kremowego mleka i delikatnego karmelu, wszystko schłodzone do perfekcji. Odkryj świeżość i przyjemność w każdym łyku."),
  ];

  List<Coffee> _cart = [];

  List<Coffee> get coffeeMenu => _coffeeMenu;
  List<Coffee> get cart => _cart;

  void addToCart(Coffee coffeeItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(coffeeItem);
    }
    notifyListeners();
  }

  void removeFromCart(Coffee coffee) {
    _cart.remove(coffee);
    notifyListeners();
  }
}
