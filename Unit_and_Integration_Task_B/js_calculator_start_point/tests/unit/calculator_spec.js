var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  // write unit tests here in the form of "it should do something..."
  it('it has a sample test', function(){
    assert.equal(true, true)
  })

  it('it should add up numbers', function(){
    calculator.previousTotal = 1;
    calculator.add(4)
    assert.equal(5, calculator.runningTotal)
  })

  it('it should subtract numbers', function(){
    calculator.previousTotal = 7;
    calculator.substract(4)
    assert.equal(3, calculator.runningTotal)
  })

  it('it should multiple numbers', function(){
    calculator.previousTotal = 3
    calculator.multiple(5)
    assert.equal(15, calculator.runningTotal)
  })

  it('it should divide numbers', function(){
    calculator.previousTotal = 21
    calculator.divide(3)
    assert.equal(3, calculator.runningTotal)
  })


});
