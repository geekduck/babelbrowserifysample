"use strict";

class Super{
  constructor(name){
    this.name = name;
  }
  greeting(){
    return "I'm " + this.name;
  }
}

class Dog extends Super{
  constructor(name){
    super(name);
  }
  greeting(){
    return super.greeting() + " Bow!";
  }
}

exports.Animal = Super;
exports.Dog = Dog;
