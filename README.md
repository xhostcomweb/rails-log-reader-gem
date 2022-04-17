# LogReader

Welcome to Paul Anthony McGowan' Log Reader gem! Ruby code, modules and class libraries for the gem is in the `lib/log_reader folder`. To experiment with that code, run `bin/console` for an interactive prompt.

###### Github Repo 

[https://github.com/xhostcomweb/ruby-log-reader-gem.git]

* Gem Description: Server log parser to display paths and IP's by total number of page views and unique views in descending order, RSpec specification files are in spec folder. 

##### To run the RSpec tests run from bash terminal in gem root folder:

$ rspec

The current spec tests should show green passed, 15 at time of writing.

##### To test/view output of the test server.log in irb console, run from system bash or other shell in log_reader gem root folder:

$ bin/console  to open Ruby console,
 
##### Then run the below console queries:

> read = LogReader::Parser.new("server.log").format    (to read and format the test file, or place own file in root and adjust filename)

> puts read

##### You Can also run the executive from the system bash or other shell in root folder:

$ ./exe/log_reader ./server.log

##### Output from the supplied test server.log should be:

Entries by total views:

/deals 90 views                                  
/faq 89 views                                    
/support 82 views                                
/about 81 views                                  
/products 80 views                               
/home 78 views                                   
                                                 
Entries by unique views:  
                       
/products 23 unique views                        
/faq 23 unique views                             
/home 23 unique views                            
/support 23 unique views                         
/deals 22 unique views                           
/about 21 unique views     

Much bigger log files can be used also, and is set up dependency injection for alteration for other input sources, ie databases etc.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add log_reader

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install log_reader

## Usage

TODO: Pretty it up a little and any refactoring, error messages etc.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/log_reader. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/log_reader/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LogReader project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/log_reader/blob/master/CODE_OF_CONDUCT.md).
