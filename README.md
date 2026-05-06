# Suren Simonyan — Resume

Single-page backend engineer resume typeset in LaTeX (LuaLaTeX + fontspec).

## Compile

```bash
lualatex -jobname="Suren_Simonyan_Resume" resume.tex
```

Requires a LaTeX distribution with `fontspec`, `DejaVu Serif`, and standard packages (`geometry`, `enumitem`, `tabularx`, `microtype`, `hyperref`, `xcolor`, `ulem`).

## Font

Uses **DejaVu Serif** — install via your OS package manager if missing:

```bash
# Ubuntu / Debian
sudo apt install fonts-dejavu

# Arch
sudo pacman -S ttf-dejavu

# macOS (Homebrew)
brew install font-dejavu
```
