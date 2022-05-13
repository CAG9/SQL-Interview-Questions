# Import your libraries
import pandas as pd
import numpy as np
# Start writing code
max_users =  len(list(set(list(facebook_friends.user2.unique() ) + list(facebook_friends.user1.unique()))))

revert = facebook_friends.rename(columns = {'user1' : 'user2', 'user2':'user1'})
Grouped = pd.concat([revert, facebook_friends]).drop_duplicates()
result = Grouped.groupby('user2').count().sort_values(by = ['user1'],ascending=False)
result = result/ max_users *100
