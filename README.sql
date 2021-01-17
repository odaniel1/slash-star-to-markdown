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
:one: Clone this repository!

:two: Edit the `example.sql` file to include your own SQL query.

:three: Any comments that you want to appear as *normal* text should be wrapped
in \/\*slash-star\*\/ comments; comments that you want to maintain integrated
in the code can use `--` comments.

:four: Push your changes to GitHub - wait ~1 minute, and refresh and enjoy your
literate documentation. 

## Updates and Future Work
This is a first prototype - a number of issues are already highlighted to improve
future functionality; in particular:

* \/\*slash-star\*\/ comments are used in [more than 20](https://en.wikipedia.org/wiki/Comparison_of_programming_languages_(syntax)#Block_comments)
programming languages - this action could easily be expanded to cover all of these ([GitHub Issue](https://github.com/odaniel1/slash-star-to-markdown/issues/1)).

* If you haven't changed `example.sql` (but have changed some other files) - then there's
no need to re-run the GitHub action.  ([GitHub Issue](https://github.com/odaniel1/slash-star-to-markdown/issues/3))
*/

