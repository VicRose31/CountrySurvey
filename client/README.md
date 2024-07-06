# Country Survey Project

This project will include a Vue front-end to the online Country Survey game. 

## User stories
User stories reflect what a particular _actor_ can accomplish in the application
For this application, there will eventually be two possible actors: the anonymous user and the authenticated user. However, for now, the application will not require users to login to participate.

### Countries page
* As an anonymous or authenticated user, I can visit the Countries page to see all the countries listed in this particular set. 
* Clicking on a country will bring up additional details about the country such as continent, flag, population, and currency.
* A user can type a search term into a Search edit box and the page will only display countries whose name contains the search term (ignoring case).

### Country Details page
* As an anonymous or authenticated user, I can see the details of one country on the Country Details page.
* Route `/country/n` accesses the Country Details page for the country with id = n.

### My Results page
* As an authenticated user, I can click the "My Results" link on the navigation bar to visit my results page.
* Route `/results` access my result page.
* The result page display user name, age, gender, and total number of countries remembered. 
*  