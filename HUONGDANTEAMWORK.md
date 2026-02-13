# Indie Godot 2D (Team Training Template)



## Chạy dự án 
**Bước 1:** Clone về máy
```bash
git clone https://github.com/KhoaTruong2108/DU_AN_A.git

```

## 👥 Team Workflow

1. **Tạo branch riêng** để làm
   ```bash
   git checkout -b <ten-branch-cua-ban>
   ```

2. Làm xong → commit
   ```bash
   git add .
   git commit -m "<Mo ta thay doi>"
   ```

3. Push lên branch của mình
   ```bash
   git push origin <ten-branch-cua-ban>
   ```

4. **KHÔNG push trực tiếp lên main** - Tạo Pull Request để review

---

## 📁 Cấu trúc thư mục
```
DU_AN_A/
├─ .gitignore
├─ project.godot
├─ README.md
│
├─ data/
│  ├─ balance.json
│  ├─ items.json
│  └─ levels/
│     └─ level01.json
│
├─ docs/
│  ├─ changelog.md
│  ├─ controls.md
│  └─ design.md
│
├─ scenes/
│  ├─ actors/
│  │  └─ player/
│  │     └─ Player.tscn
│  ├─ levels/
│  │  └─ Level01.tscn
│  ├─ main/
│  │  └─ Main.tscn
│  └─ ui/
│     └─ Hud.tscn
│
└─ scripts/
   ├─ core/
   │  ├─ EventBus.gd
   │  ├─ Game.gd
   │  └─ SceneRouter.gd
   │
   ├─ gameplay/
   │  └─ player/
   │     ├─ PlayerController.gd
   │     └─ PlayerStats.gd
   │
   └─ ui/
      └─ Hud.gd
```

