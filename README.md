This repository is a demo for Sinatra App deploy with `unicorn`, `nginx` and `capistrano3`

Feel free to use it to bootstrap a Sinatra App.

##Basic structure

	├── Capfile
	├── Gemfile
	├── Gemfile.lock
	├── README.md
	├── config
	│   ├── deploy
	│   │   ├── production.rb
	│   │   └── staging.rb
	│   ├── deploy.rb
	│   ├── nginx.conf
	│   └── unicorn
	│       ├── production.rb
	│       └── staging.rb
	├── config.ru
	├── log
	├── myapp.rb
	└── tmp
	    ├── pids
	    └── sockets	
	    

>You may add a `config/secrets.yml` file to store some sensitive settings if necessary.