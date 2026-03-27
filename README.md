# Movie Transformer Recommender

Transformer-based movie recommendation project using the MovieLens 20M dataset.

This repo is for a research-style project on hybrid recommendation. The main idea is to start with a strong sequential transformer baseline, then add semantic movie information such as genres, user tags, and tag-genome features.

## Setup


```bash
git clone https://github.com/Dzuy123/movie-transformer-recommender.git
cd movie-transformer-recommender
```

Then run one of the commands below.

### Fedora

```bash
sudo dnf install -y python3 python3-devel gcc gcc-c++ make git
python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip setuptools wheel
python -m pip install -r requirements.lock.txt
python -m ipykernel install --user --name=movie-transformer-recommender --display-name "Python (movie-transformer-recommender)"
```

### Ubuntu / Vast.ai

```bash
sudo apt update
sudo apt install -y python3 python3-venv python3-dev build-essential git
python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip setuptools wheel
python -m pip install -r requirements.lock.txt
python -m ipykernel install --user --name=movie-transformer-recommender --display-name "Python (movie-transformer-recommender)"
```

### Windows PowerShell

```powershell
py -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip setuptools wheel
python -m pip install -r requirements.lock.txt
python -m ipykernel install --user --name=movie-transformer-recommender --display-name "Python (movie-transformer-recommender)"
```

If PowerShell blocks the activation script, run:

```powershell
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
```

## Run

### Fedora / Ubuntu / Vast.ai

```bash
source .venv/bin/activate
jupyter lab
```

### Windows PowerShell

```powershell
.\.venv\Scripts\Activate.ps1
jupyter lab
```

## Verify installation

```bash
python -c "import numpy, pandas, sklearn, scipy, matplotlib, seaborn, tqdm, torch, transformers, sentence_transformers; print('OK')"
```

## Dataset

This project uses the MovieLens 20M dataset.


```text
data/
└── ml-20m/
    ├── genome_scores.csv
    ├── genome_tags.csv
    ├── link.csv
    ├── movie.csv
    ├── rating.csv
    └── tag.csv
```

This will download the dataset zip into data/ and unzip it into: data/ml-20m/

```bash
./scripts/download_ml20m.sh
```


## File structure

```text
movie-transformer-recommender/
├── .gitignore
├── README.md
├── requirements.lock.txt
├── configs/
│   └── .gitkeep
├── data/
│   ├── .gitkeep
│   └── README.md
├── notebooks/
│   └── .gitkeep
├── references/
│   └── .gitkeep
├── reports/
│   └── .gitkeep
├── scripts/
│   └── .gitkeep
└── src/
    └── __init__.py
```
