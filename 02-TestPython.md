# Test Python

## Print something in Python


```python
print("yo")
```

```
## yo
```


## Import pandas and print a DataFrame


```python
import pandas as pd
print(pd.__version__)
```

```
## 1.5.3
```

```python
data = {'A': [1, 2, 3], 'B': [4, 5, 6]}

# Create a pandas dataframe from the dictionary
df = pd.DataFrame(data)

# Print the dataframe
print(df)
```

```
##    A  B
## 0  1  4
## 1  2  5
## 2  3  6
```
