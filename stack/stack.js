// Generated by CoffeeScript 2.5.1
(function() {
  //!/usr/bin/env coffee

  //  file: src/stack/stack.coffee
  //  package: ws-rmi-examples

  var Stack;

  Stack = class Stack {
    constructor() {
      this.push = this.push.bind(this);
      this.pop = this.pop.bind(this);
      this.stack = [];
    }

    push(x) {
      return new Promise((resolve, reject) => {
        var error;
        try {
          resolve(this.stack.push(x));
          return console.log(this.stack);
        } catch (error1) {
          error = error1;
          return reject(error);
        }
      });
    }

    pop() {
      return new Promise((resolve, reject) => {
        var error;
        try {
          resolve(this.stack.pop());
          return console.log(this.stack);
        } catch (error1) {
          error = error1;
          return reject(error);
        }
      });
    }

  };

  exports.Stack = Stack;

}).call(this);