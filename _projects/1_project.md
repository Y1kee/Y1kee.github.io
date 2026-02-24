---
layout: page
title: Video2Traj
description: A lightweight tool for robotics researchers to generate trajectory figures from experimental videos.
img: assets/img/Video2Traj.jpg
importance: 1
# category: work
github: https://github.com/Y1kee/Video2Traj
---

**Video2Traj** turns robots' experimental videos into publication-ready trajectory figures. It targets **static backgrounds with fixed camera** setups (e.g., lab or motion-capture environments) and does not handle moving cameras or dynamic backgrounds.

**Features:**

- **Frame selection**: Uniform sampling with configurable intervals, manual frame lists, or interactive mode with real-time preview (play/pause, mark frames, trackbar).
- **Rendering**: Per-frame alpha compositing, LAB + gradient-based segmentation, morphological refinement, optional soft edges for smoother shadows.
- **Export**: JSON output with centroid, bounding box, and area per frame for downstream analysis and plotting.

**Quick start:**

```bash
git clone https://github.com/Y1kee/Video2Traj.git && cd Video2Traj
pip install -r requirements.txt
python video2traj.py examples/example_in.mp4 -o examples/example_out.jpg --num-frames 30
```

Interactive mode: `--interactive` for in-video player controls (SPACE play/pause, S mark frame, P preview). Outputs a stroboscopic trajectory image and a JSON file with per-frame trajectory data.

Code, examples, and full options: [GitHub — Y1kee/Video2Traj](https://github.com/Y1kee/Video2Traj).
