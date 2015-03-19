"use strict";

function Super(name){
  this.name = name;
}

Super.prototype.greeting = function(){
  return "I'm " + this.name;
};

function Dog(name){
  this.name = name;
}
Dog.prototype.greeting = Super.prototype.greeting;

exports.Animal = Super;
exports.Dog = Dog;
