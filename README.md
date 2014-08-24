Viper Module Generator
======================
[![Code Climate](https://codeclimate.com/github/teambox/viper-module-generator/badges/gpa.svg)](https://codeclimate.com/github/teambox/viper-module-generator)
[![Build Status](https://travis-ci.org/teambox/viper-module-generator.svg?branch=master)](https://travis-ci.org/teambox/viper-module-generator)
[![Test Coverage](https://codeclimate.com/github/teambox/viper-module-generator/badges/coverage.svg)](https://codeclimate.com/github/teambox/viper-module-generator)
[![Dependency Status](https://gemnasium.com/teambox/viper-module-generator.svg)](https://gemnasium.com/teambox/viper-module-generator)


![image](http://www.objc.io/images/issue-13/2014-06-07-viper-intro.jpg)

Gem to generate VIPER modules to use them in your Objective-C/Swift projects
The implementation scheme returned by this generator is hardly inspired in the example and post of Objc.io, http://www.objc.io/issue-13/viper.html .

- [Features](#features)
  - [Changelog](#changelog-0.1)
  - [Expected in version 0.2](#expected-in-version-0.2)
- [Viper files structure](#viper-files-structure)
- [How to install vipergen](#how-to-install-vipergen)
- [How to generate a VIPER module with a given name?](#how-to-generate-viper-module-with-a-given-name?)
- [Developer tips](#developer-tips)
  - [Update the gem](#update-the-gem)
  - [Add a new template](#add-a-new-template)
- [Resources](#resources)

## Features
- Generates the module in Swift and Objective-C
- Ready to be installed as a gem https://rubygems.org/gems/VIPERGen

### Changelog 0.1
- Added default template
- Fully components tested

### Expected in version 0.2
- FetchedResultsController template
- Login template
- Integrate with XCode as a plugin (http://nshipster.com/xcode-plugins/)

## Viper files structure
```bash
.objc
+-- DataManager
|   +-- VIPERDataManager.h
|   +-- VIPERDataManager.m
+-- Interactor
|   +-- VIPERInteractor.h
|   +-- VIPERInteractor.m
+-- Presenter
|   +-- VIPERPresenter.h
|   +-- VIPERPresenter.m
+-- ViewController
|   +-- VIPERViewController.h
|   +-- VIPERViewController.m
+-- WireFrame
|   +-- VIPERWireFrame.h
|   +-- VIPERWireFrame.m
+-- Protocols
|   +-- VIPERProtocols.h
.swift
+-- DataManager
|   +-- VIPERDataManager.swift
+-- Interactor
|   +-- VIPERInteractor.swift
+-- Presenter
|   +-- VIPERPresenter.swift
+-- ViewController
|   +-- VIPERViewController.swift
+-- WireFrame
|   +-- VIPERWireFrame.swift
+-- Protocols
|   +-- VIPERProtocols.swift
```
## How to install vipergen ?
You can install it easily as using the gem. With ruby installed in your OSX execute:
```bash
sudo gem install vipergen
```
If everything were right, you should have now the vipergem command available in your system console

## How to generate a VIPER module with a given name?
You have just to execute the following command
```bash
vipergen generate MyFirstViperModule --path=~/myproject/shared
```
And then the files structure will be automatically created. Don't forget to add this folder to your project dragging it into the XCode/Appcode inspector

## Developer tips
### Update the gem 
When the gem is updated it has to be reported to the gem repository. I followed this tutorial http://amaras-tech.co.uk/article/43/Creating_executable_gems that basically says that once you have your gem ready execute:
```bash
gem build vipergen.gemspec
gem install vipergen-0.1.gem
gem push vipergen-0.1.gem
```
Then you'll be asked for your credentials in order to make the update in the repo (http://guides.rubygems.org/publishing/)

### Add a new template
Are you interested in VIPER and you would like to contribute with this gem adding new templates? Feel free to do it. It's pretty easy. You've just to:
- Create a folder inside `templates` with the name of your template
- You'll have to create inside the templates in both languages, Swift and Objective-C (get inspired from existing templates)
- Use the word VIPER where you want the name to be replaced in.
- Report it as a PR in this repo updating the gem version in Gemspec.

## Resources
- Rspec documentation: http://rubydoc.info/gems/rspec-expectations/frames
- XCode Plugins: http://nshipster.com/xcode-plugins/
- XCodeProj gem (to modify project groups structure): https://github.com/CocoaPods/Xcodeproj
- Thor, powerful Ruby library for command line: http://whatisthor.com/
