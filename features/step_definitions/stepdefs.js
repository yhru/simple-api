const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

function isItArmand(user) {
    if (user === "Armand") {
      return "Yes";
    } else {
      return "No";
    }
  }

Given('user is {string}', function (givenUser) {
    this.user = givenUser;
});

When('I ask whether it\'s Armand', function () {
    this.actualAnswer = isItArmand(this.user);
});

Then('I should be told {string}', function (expectedAnswer) {
    assert.strictEqual(this.actualAnswer, expectedAnswer);
});