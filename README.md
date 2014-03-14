canvas-collaborator
===================

This shall become a simple tool to create and discuss business models, using the busines model canvas from Alex Osterwalder. There are some existing tools available, but they don't exactly do what I want them to do or they are to expensive in my eyes. I plan the following functions:

- Create a canvas, containing the nine fields
- Add post-its to each field
- Modify and delete post-its from each field
- "Dive" into a field, to see a more detailed view of the post its
- A post-it has a title and a content. In the overview, there are only the titles shown.
- Add notes to "everything": The model itself, each field, each post-it
- A Canvas is simply created by one button
- A canvas is accessed via an unique hash
- A user is recongnized by a cookie. A user can store his name and his email to show his identity to his collaborateurs

That's it for now ;)

##Database setup

The canvas collaborator is configured to use postgresql as databsee as default. In that way, you can directly deploy to heroku for a test installation. Of course, any other database can be used.

    sudo -u postgres createdb canvas_development
    sudo -u postgres createdb canvas_test
    sudo -u postgres createdb canvas_production
    sudo -u postgres createuser canvas -P

    rake db:create
    rake db:migrate
