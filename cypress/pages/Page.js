export default class Page{
    constructor (location){
        if (location){
            cy.vist(location)
        }
    }
}