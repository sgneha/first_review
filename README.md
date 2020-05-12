String of comma separated values.Build a summary report for school.
VAlues are Green,Amber ,Red.
Example "Green, Green, Amber, Red, Green"

```
INPUT            | OUTPUT

'Green'          | 'Green: 1'
'Red'            |  'Red: 1'
'Green,Green'    |  'Green: 2'
'Green,Red'      |  "Green: 1\nRed: 1"
'Green,Amber,Red'|  "Green: 1\nAmber: 1\nRed: 1"
''               |  'Please provide valid grades'
'Red,Orange'     |  'Red: 1\nUncounted: 1'


```
