import { Given } from "cypress-cucumber-preprocessor/steps";
import FacebookPage from "../../../pages/socialNetworks/FacebookPage";

const url = "https://facebook.com";

Given(`I open Facebook page {string} and {string}`, (username, password) => {
  cy.visit(url);
  cy.log('URL: ' + url);
  const fb = new FacebookPage();
  fb.username(username);
  fb.password(password);
  fb.login();
});

Then(`I see {string} in the title`, (status) => {
  cy.title().should("include", status);
});