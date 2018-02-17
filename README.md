# Word Definer

#### Ruby and Sinatra exercise, 2.16.18

#### Emily Watkins

## Description

This program takes in a word which is added to a list. This word is linked to its own URL where the user can add a definition to the word.

## Setup

Clone this repository.

Install Ruby if necessary.

From root directory in terminal, run the following:

`$ ruby app.rb`

In your browser, navigate to localhost:4567/ to view app.

App is also available here: https://stark-hollows-95478.herokuapp.com/

## Specs

* Program takes user input "word" and adds to list.  
Input: "cat", "dog"  
Output: cat, dog

* Program creates URL and creates list item as link to that URL.  
Input: "Cat"  
Output: <a href=/cat>cat</a>

* Program allows user to add definition to word on new page.
Input: word:"cat" definition:"producer of allergens"  
Output: cat producer of allergens


## Technologies Used

* Ruby
* Sinatra


## License

Licensed under the MIT License.

Copyright (c) 2018 Emily Watkins
