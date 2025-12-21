# Indie Godot 2D (Team Training Template)



## Chạy dự án 
**Bước 1:** Clone về máy
```bash
git clone <repo-url>

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
``` bash

DU_AN_A
|   .gitignore
|   HUONGDANTEAMWORK.md
|   project.godot
|   README.md
|   str.txt
|   
+---.godot
|   
|   
|                   
+---data
|   |   balance.json
|   |   items.json
|   |   
|   \---levels
|           level01.json
|           
+---docs
|       changelog.md
|       controls.md
|       design.md
|       
+---scenes
|   +---actors
|   |   \---player
|   |           Player.tscn
|   |           
|   +---levels
|   |       Level01.tscn
|   |       
|   +---main
|   |       Main.tscn
|   |       
|   \---ui
|           Hud.tscn
|           
\---scripts
    +---core
    |       EventBus.gd
    |       EventBus.gd.uid
    |       Game.gd
    |       Game.gd.uid
    |       SceneRouter.gd
    |       SceneRouter.gd.uid
    |       
    +---gameplay
    |   \---player
    |           PlayerController.gd
    |           PlayerController.gd.uid
    |           PlayerStats.gd
    |           PlayerStats.gd.uid
    |           
    \---ui
            Hud.gd
            Hud.gd.uid
            
```


