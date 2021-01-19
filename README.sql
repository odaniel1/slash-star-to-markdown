/* # slash-star-to-markdown
A GitHub Action workflow to auto generate literate documentation from executable
scripts (eg. `.sql` files).

## Example*/

-- A small SQL query about South American camelids
select 
   NECK_LENGTH
  ,NECK_GIRTH
  ,SPITTING_DISTANCE
from CAMELIDS
where GENUS in ('Lama', 'Vicugna')

/*
## Explanation
This README has been generated from the file `README.sql`, automatically by
GitHub using GitHub Actions. The base `.sql` file is a valid SQL script that
could be used to run the query above.

Whenever code is pushed to GitHub (eg. updates are made), this file is updated
(automatically, by a GitHub Action) by replacing text that is contained in
\/\*slash-star\*\/ comment blocks with plain text, and wrapping the remaining
text into code chunks - enabling literate (eg. pretty) rendering of the code.

## How Can I Use This?
:one: Click the green **Use this template** button at the top of the page, and
follow the usual steps to create a GitHub repository.

:two: Use the repo like any other GitHub repo - you can remove any of the files
outside of the `.github` directory.

:three: Write your own `.sql` script, and push your changes to GitHub. Any
comments that you want to appear as *normal* text should be wrapped in
\/\*slash-star\*\/ comments; comments that you want to maintain integrated
in the code can use `--` comments.

:four: Wait ~30 seconds, view th repo in GitHub and enjoy reading your newly
rendered makdown documentation (if your SQL file was `pistachio-opinions/wonderful-pistachios.sql`
then the documentation will be `pistachio-opinions/wonderful-pistachios.md`). 

## Notes and Warnings

The GitHub action has permission to create and overwrite existing files in your 
repository! This means you should adhere to the following practices when using this
template (if you don't all is not lost: but you will need to revert the GitHub action's
commits):

* If you want to create your own (non-auto generated) `README.md` file, then ensure that you do
not create a file called `README.sql`.

* Do not edit generated `.md` files by hand - your efforts will be written over, and may lead to git conflicts
that you'd then need to debug.

* Once the GitHub action has run, your local copy of the repo will be behind the remote - you should
therefore always pull changes before committing/pushing to GitHub.

## Updates and Future Work
This is a first prototype - a number of issues are already highlighted to improve
future functionality; in particular:

* \/\*slash-star\*\/ comments are used in [more than 20](https://en.wikipedia.org/wiki/Comparison_of_programming_languages_(syntax)#Block_comments)
programming languages - this action could easily be expanded to cover all of these ([GitHub Issue](https://github.com/odaniel1/slash-star-to-markdown/issues/1)).

* Still debugging...
*/

