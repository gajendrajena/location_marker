# README

# Geo Location marker using google geocoder
An api only application that allows CRUD operation arround google geocoding map location

Implementations

`part 1`
```
  - Build a simple React application that shows a map and markers on it.
  - A user should be able to view, create, edit and delete this markers.
  - All the changes should be immediately visible on the map.
```

`part 2`
```
 - Build the backend API in Ruby for allowing these CRUD operations for markers.
```

## Technologies
- Frontend
`HTML`, `CSS`, `Javascript`, `JQuery`, `Twitter Bootstrap (4.3.1)`, `React.js (16.8.0)`

- Backend
`Ruby on Rails` ( Ruby:` 2.6.0`, Rails: `5.2.3` )

## Pre requisite
1. Ruby - `2.6.0` ( Choose `rvm` or `rbenv` )

2. Postgresql - `10.7`
`brew install postgresql`
`brew services start postgresql`

## Setup

**1. Clone the repository**
```
git clone git@github.com:gajendrajena/location_marker.git
```

**2. Install Dependencies**
```
cd location_marker
bundle install
```

**3. Create Database**

```
rake db:create
```

**4. Setup seed data**

```
rake db:setup
```

**5. Run server**

```
bin/rake start
```


**6. To run testcases**

```
bundle exec rspec
```


## Deployment

Platform - `Heroku`

This application would be deployed at https://location-marker.herokuapp.com/


## Credits

Gajendra Jena

