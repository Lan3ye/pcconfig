import pandas as pd

#file = './data-staging/cpu.json'
file = './data-staging/video-card.json'

df = pd.read_json(file)
print(df.head(20))

