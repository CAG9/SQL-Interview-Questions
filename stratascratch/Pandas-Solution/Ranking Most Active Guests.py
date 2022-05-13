# Import your libraries
import pandas as pd

# Start writing code
Grouped = airbnb_contacts.groupby('id_guest').sum().reset_index().sort_values(by=['n_messages'], ascending =False)
Grouped['ranking'] = Grouped['n_messages'].rank(method='dense',ascending =False)
Grouped
