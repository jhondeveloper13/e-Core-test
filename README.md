# Technical Test
Ruby project with base structure for automation of Front-end tests to validate Technical Challenge - Web automation

## Initialization
This stack uses the following tools:
1. [Ruby](https://rubyinstaller.org/)
2. [Cucumber](https://cucumber.io/)
3. [Git](https://git-scm.com/download/win)

### Prerequisites
Necessary to install [Ruby](https://rubyinstaller.org/) in version 3.2.x and then run the commands through terminal:

```
gem install bundler --force
```

### Installation
Clone the project
```
Run the command below to install the dependencies:
```
bundle install
```

# Running the Tests
After installing the dependencies and configuring the environment, let's run the tests.
```
rake test[brand_environment, exec_device, exec_mode, graphic_mode, tags]

rake test[hlg,desktop,local,graphic,@challenge]
```
brand_environment -hlg

exec_device - desktop/mobile

exec_mode - local/remote

graphic_mode - graphic/headless (with screen rendering/without screen rendering) *even in headless mode the prints for reports work

tags - according to features tagging in the project

## Estrutura do projeto 
#### Features folder
> > * pages - Folder that contains the Page Objects with the elements used
> > * xxxxx.rb - Files that contain the elements that will be used in the tests
  > * steps - Folder that contains the files with the implementation of the methods for executing the scenarios
  > > * xxxxx_steps.rb - Files containing the implementation of the methods mentioned above
  > * specs - Folder containing test scenarios in BDD
  > > * xxxxx.feature - Files containing feature specifications and user stories in BDD

#### Step Folder
  > * general_steps.rb - File that contains all the methods that will be used in more than one test
