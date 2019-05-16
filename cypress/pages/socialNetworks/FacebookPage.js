import Page from '../Page'

export default class FacebookPage extends Page{
    // constructor (location = '/'){
    //     super(location)
    // }

    username(user){
        cy.get('#email').type(user);
    }

    password(pass){
        cy.get('#pass').type(pass);
    }
    login(){
        cy.get('#loginbutton').click();
    }
}