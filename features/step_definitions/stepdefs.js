const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

function itReturnArmand(user){
    return "yes"
}

Given('today is Armand', function () {
    this.today = 'Armand';
  });

When('I ask whether it\'s Friday yet', function () {
    this.actualAnswer = isItFriday(this.today);
  });

Given('today is {string}', function (givenDay) {
  this.today = givenDay;
});

When('I ask whether it\'s Friday yet', function () {
  this.actualAnswer = isItFriday(this.today);
});

Then('I should be told {string}', function (expectedAnswer) {
  assert.strictEqual(this.actualAnswer, expectedAnswer);
});