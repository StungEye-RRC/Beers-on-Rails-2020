# Beers on Rails

### Model: Company (That maps to a db table named companies)

 - id (auto-inc primary key)
 - name:string
 - created_at:timestamp
 - updated_at:timestamp

### Model: Beer (That maps to a db table named beers)

 - id (auto-inc primary key)
 - name:string (varchar)
 - price:decimal
 - description:text (text)
 - company_id:integer (FK to the companies table. one-to-many)
 - created_at:timestamp
 - updated_at:timestamp

### Controller: CompaniesController

 - action: index (Load all companies)
 - action: show  (Load a single company by id)

### Views:

 - view: index: /app/views/companies/index.html.erb
 - view: show:  /app/views/companies/show.html.erb

### Routes

```
 GET    /companies        =>   companies#index   (Load and display all companies)
 GET    /companies/:id    =>   companies#show    (Load and display a single company by id)
 GET    /beers            =>   beers#index       (Load and display all beers)
 GET    /beers/:id        =>   beers#show        (Load and display a single beer by id)
 GET    /beers/new        =>   beers#new         (Display a form to create a new beer)
 POST   /beers            =>   beers#create      (Create a beer with POSTed data)
 GET    /beers/:id/edit   =>   beers#edit        (Display a form for editing a beer)
 PATCH  /beers/:id        =>   beers#update      (Update a beer with PATCHed data)
 DELETE /beers/:id        =>   beers#delete      (Delete a beer by id)
```

