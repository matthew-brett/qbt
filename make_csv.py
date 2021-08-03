import numpy as np
import pandas as pd

n_vehicles = 20
n_trials = 25

rng = np.random.default_rng()
trials = rng.integers(1, 11, size=(n_trials, n_vehicles))

df = pd.DataFrame(
    trials,
    index=[f'Day {i + 1}' for i in range(n_trials)],
    columns=[f'A{i + 1}' for i in range(n_vehicles)]
)
df.to_csv('some_days.csv')
