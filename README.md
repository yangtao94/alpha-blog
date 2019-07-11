<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="https://imgur.com/a/SflM5Fl" alt="Project logo"></a>
</p>

<h3 align="center">Alpha Blog</h3>

<div align="center">

  [![Status](https://img.shields.io/badge/status-active-success.svg)]() 
  

</div>

---

<p align="center"> Alpha blog
    <br> 
</p>

## 📝 Table of Contents
- [About](#about)
- [Getting Started](#getting_started)
- [Deployment](#deployment)
- [Usage](#usage)
- [Built Using](#built_using)
- [Contributing](../CONTRIBUTING.md)
- [Authors](#authors)


## 🧐 About <a name = "about"></a>
A blog-site created using Ruby on Rails (ver 5.0). Allows for user log-in, creating posts, and basic blogging stuff. Example website <a href = "https://mynewappblog.herokuapp.com/">here</a>

## 🏁 Getting Started <a name = "getting_started"></a>
Clone and Download the repository to obtain the files. 


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
```

## 🎈 Usage <a name="usage"></a>
Add new routes at config/routes.rb. Create new controllers for the routes at app/controller

To check the name of the routes when redirecting, type (when your rails is ver 5.0)

```
rail routes 
```

## 🚀 Deployment <a name = "deployment"></a>
Create a heroku account. 

Use this comment to install heroku toolbelt to the local environment:


```
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh 
```

Then login using 

```
heroku login

```
OR connect using ssh key 

```
heroku keys:add

```

Push to heroku master using 

```
git push heroku master

```

Rename your url with  (newnameofyourapp.herokuapp.com)

```
heroku rename newnameofyourapp

```

## ⛏️ Built Using <a name = "built_using"></a>
- Ruby on Rails - Server Framework
- Bootstrap - Front-end Design
