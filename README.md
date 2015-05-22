# iiitdalumni
IIITD Alumni Website

Home page : consists of recent news,activities and events (a carousel,maybe? ).The following links are present on the home page:
-About IIITD AA
-Groups/Fora
-News (seems redundant,as it is already present in the news feed)
-Showcase
-Contact
-Profile (on logging in)
-Account settings (on logging in)
Along with these, we have a user-login/signup button opening a login-window (in a modal). A search bar for looking up people would be nice.

On the footer, we have home, top of page, about, contact, IIITD website, copyright statement.

To run the website on your PC:<br/>
(Preferably Ubuntu)<br/>
1. Install Rails<br/>
2. Clone the repo<br/>
3. CD to the directory<br/>
4. Do bundle instal<br/>
5. Do rake db:migrate<br/>
6. If want sample users, Do rake db:seed<br/>
7. run rails server (ensure that no other server is running on localhost:3000)<br/>
8. go to http://localhost:3000<br/>
