# clips

No computador Host fazer

```bash
git clone git@github.com:joao-parana/clips.git
docker build -t parana/clips .
docker run -i -t parana/clips bash
```

No contêiner fazer:

```bash
cd /build-clips/examples/sudoku
clips -f2 runbench.bat
```

