# Project Title

## Table of Contents
+ [About](#about)
+ [Getting Started](#getting_started)
+ [Usage](#usage)


## About <a name = "about">Alpha Blog</a>
A blog-site created using Ruby on Rails (ver 5.0). Allows for user log-in, creating posts, and basic blogging stuff. Example website <a href = "https://mynewappblog.herokuapp.com/">here</a>

## Getting Started <a name = "getting_started"></a>
Clone and Download the repository to obtain the files. 

t

### Prerequisites

Before everything, make sure you have the packages over at Gemfile. To download all packages in Gemfile, type

```
bundle install --without production
```

### Installing

Change to the working directory of all the files and type

```
rails server
```
to start the local server at port 3000. 

Navigate to localhost:3000 to view the website

## Usage <a name = "usage"></a>

Add new routes at config/routes.rb. Create new controllers for the routes at app/controller

To check the name of the routes when redirecting, type (when your rails is ver 5.0)

```
rail routes 
```
