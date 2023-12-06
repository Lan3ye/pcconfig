import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

cpuPath = "./data-staging/cpu.json"

cpuData = pd.read_json(cpuPath)

# Removing all rows where price is null
cpuData.dropna(subset=['price'], inplace=True)

plt.scatter(cpuData['core_count'], cpuData['price'])
plt.show()