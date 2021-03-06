const { Given, When, Then } = require('@cucumber/cucumber');
const assert = require('assert');
const axios = require('axios');

function getData(url) {
    try {
        return axios.get(url);
    } catch (e) {
        console.error('exception occurred while GET', e);
        throw e;
    }
}
Given('The user with {int} exist', async function (id) {
    this.id = id;
})

When('I send GET request to {}', async function (path) {
    let url = ""
    if (this.id) {
        url = `http://127.0.0.1:8080${path}/${this.id}`
    } else {
        url = `http://127.0.0.1:8080${path}`
    }
    const response = await getData(url);
    this.response = response;
})

Then("I receive", async function (docstring) {
    assert.deepEqual(this.response.data, JSON.parse(docstring));
})

Then('I get response code {int}', function (int) {
    assert.equal(this.response.status, int)
})