var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;

describe('calculator functionality', function() {
  beforeEach(function() {
    browser.ignoreSynchronization = true;
    browser.get('http://localhost:3000');
  });

  // write integration tests here in the form of "it should do something..."
  it('should have working number buttons', function(){
    running_total = element(by.css('#running_total'))
    element(by.css('#number2')).click();
    expect(running_total.getAttribute('value')).to.eventually.equal('2')
  })

  it('should update the display of the running total', function() {
    running_total = element(by.css(#running_total))
    element(by.css('#number2')).click();
    element(by.css(#operator_subtract)).clikc();
    element(by.css('#number3')).click();
    expected(running_total.getAttribute('value')).to.eventually.equal('1');
  })

  it(‘it should concatenate multiple number button clicks’, function(){
  calculator.numberClick(1);
  calculator.numberClick(3);
  calculator.numberClick(5);
  calculator.numberClick(4);

  const expected = 1354;
  assert.strictEqual(calculator.runningTotal, expected);
});

it(‘it should chain multiple operations together’, function(){
  calculator.numberClick(5);
  calculator.operatorClick(“+”);
  calculator.numberClick(5);
  calculator.operatorClick(“*”);
  calculator.numberClick(2);
  calculator.operatorClick(“=”);
  const expected = 20;
  assert.strictEqual(calculator.runningTotal, expected);
});

it(‘it should clear the running total without affecting the calculation’, function(){
  calculator.numberClick(8);
  calculator.operatorClick(“*”);
  calculator.numberClick(2);
  calculator.operatorClick(“+”);
  calculator.numberClick(2);
  calculator.clearClick();
  const expected = 16;
  assert.strictEqual(calculator.previousTotal, expected);
});

});
