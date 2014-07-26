# Yearbook [![Code Climate](https://codeclimate.com/github/sebarmano/yearbook.png)](https://codeclimate.com/github/sebarmano/yearbook)

_this project is in early development phase._
This Rails application is a an online school directory for The Iron Yard Academy.
This project uses a Rails API with Backbone to display a single web page application.

## Installation and usage

This application uses Postgres, so you will need it installed on your machine. If on Linux, use your package manager.
On OS X, if you have Homebrew, run `brew install postgresql`.

Once you have Postgres installed, edit `config/database.yml` -- or set up Postgres to have a database called
`freeshelf_development` for your current user.

Next, install all required gems:

```sh
bundle install
```

Finally, set up the database:

```sh
rake db:create db:migrate db:seed
```

After that, you can run `rails server` to start the server or `rails console` for a REPL.

## Contributing

If you are new to using git and GitHub, follow these directions:

1. Fork the project.
2. Clone _your_ copy.
3. Add another remote:  
   `git remote add upstream https://github.com/sebarmano/yearbook.git`
4. Make a local branch for your feature.
5. Write code.
6. Test it out.
7. Run `git fetch upstream` and then `git merge upstream/master` in your branch.
8. Test again.
9. Push your branch to your repo.
10. Make a pull request!
