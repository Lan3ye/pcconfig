import json

with open('functions.json') as file:
    data = json.load(file)

cpuVals = data[0]['cpu']
print(cpuVals)

def cpusFunction(values, configPrice):
    x = configPrice
    price = cpuVals[0] * x + cpuVals[1] 
    return price

configPrice = int(input())

print(cpusFunction(cpuVals, configPrice))

