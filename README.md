
# IIITD Alumni Website (not deployed)

Home page : consists of recent news,activities and events (a carousel,maybe? ).The following links are present on the home page:
- About IIITD AA
- Groups/Fora
- News (seems redundant,as it is already present in the news feed)
- Showcase
- Contact
- Profile (on logging in)
- Account settings (on logging in)
Along with these, we have a user-login/signup button opening a login-window (in a modal). A search bar for looking up people would be nice.

On the footer, we have home, top of page, about, contact, IIITD website, copyright statement.

To run the website on your PC:
(Preferably Ubuntu)
<ol>
<li> Install Rails </li>
<li> Clone the repo </li>
<li> CD to the directory </li>
<li> Do bundle install </li>
<li> Do rake db:migrate </li>
<li> If want sample users, do rake db:seed </li>
<li> Run ```rails server``` (ensure that no other server is running on localhost:3000) </li>
<li> Navigate to http://localhost:3000
</ol>

Code:
```bash
sudo apt-get update
sudo apt-get install curl
\curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install ruby-2.2.2
rvm use ruby --default
gem install bundle
git clone https://github.com/rjalfa/iiitdalumni.git
cd iiitdalumni
bundle install
rake db:migrate
rake db:seed   # Optional
bundle exec rails server
```
