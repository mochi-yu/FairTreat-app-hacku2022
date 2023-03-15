class item {
  String name;
  int price;

  item(this.name, this.price);

  @override
  String toString(){
    return '{name: $name, price: $price}';
  }
}