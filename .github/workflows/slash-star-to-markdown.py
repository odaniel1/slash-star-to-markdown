import re

# matches start /* of slash-star comment block
ss_start = re.compile('\\/\\*')

# matches end */ of slash-star comment block
ss_end = re.compile('\\*\\/')

# path to the query to transcripe
ss_fp = 'example.sql'

with open(ss_fp, 'r') as ss:
    # read lines into memory
    ss_string = ss.read()
    
    # replace /* and */ with markdown start/end blocks
    md_string = ss_start.sub('```\n', ss_string)
    md_string = ss_end.sub('\n```sql', md_string)


# matches leading ``` at the start of a file
md_lead = re.compile('^[\n\s]{0,}```')

# matches trailing ``` at the end of a file
md_trail = re.compile('```sql[\n\s]{0,}\Z')

# did the file start with a comment or not?
if md_lead.match(md_string):
    # if so - need to remove the leading ```
    md_string = md_lead.sub('', md_string)
else:
    # if not - need to add a leading ```
    md_string = '```sql\n' + md_string

# did the file end with a comment or not?
if md_trail.search(md_string):
    # if so - need to remove the trailing ```
    md_string = md_trail.sub('', md_string)
else:
    # if not - need to add a trailing ```
    md_string = md_string + '```'

# write transcribed file to README
md_fp = 'README.md'

with open(md_fp, 'w') as md:
    md.write(md_string)
