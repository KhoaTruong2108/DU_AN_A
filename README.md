# Indie Godot 2D (Team Training Template)

## 1. Thông tin tổng quan

- **Tên dự án:** A  
- **Thể loại:** Chiến thuật thời gian thực (RTS) 2D  
- **Nhóm phát triển:** Trương Phạm Đăng Khoa, Hà Hoàng, Dĩ Thái  
- **Ngôn ngữ / Engine:** Godot 4.x (GDScript, C# khi cần hiệu năng)  
- **Thời gian phát triển:** Đang triển khai  
- **Phiên bản báo cáo:** 1.0  
- **Nền tảng mục tiêu:** PC (Windows), dự kiến mở rộng sang Linux/Mac, tiềm năng mobile  

---

## 2. Mục tiêu dự án

- **Mục tiêu chính:** Xây dựng một tựa game RTS 2D có chiều sâu cốt truyện, tái hiện hành trình “phục quốc” của nhà vua trẻ — hướng tới thị trường Đông Nam Á.
- **Đối tượng người chơi:** Người chơi yêu thích game RTS, pixel art cổ điển và yếu tố quản lý tài nguyên.
- **Kỳ vọng sản phẩm:**
  - 100.000 lượt tải trong 6 tháng đầu
  - Tỉ lệ giữ chân người chơi **D7 ≥ 25%**

---

## 3. Ý tưởng & cốt truyện

Người chơi nhập vai một vị vua trẻ trong thời kỳ đế quốc suy vong. Sau khi bị phản loạn lật đổ, nhà vua buộc phải trốn chạy và khởi đầu hành trình phục quốc.

Người chơi sẽ từng bước:
- Xây dựng lại quân đội
- Chiếm lại vùng đất
- Tái thiết kinh tế
- Khôi phục vương quyền

Câu chuyện nhấn mạnh vào sự trưởng thành và ý chí phục sinh đế chế, mang yếu tố cảm xúc thay vì chỉ chiến đấu thuần túy.

---

## 4. Thiết kế gameplay

- **Thể loại:** RTS – mô phỏng thời gian thực  
- **Phong cách:** Lấy cảm hứng từ Kiomet, kết hợp:
  - Điều quân bằng kéo line
  - Quản lý tài nguyên
  - Chiến dịch cốt truyện

### Chế độ chơi
- **Chiến dịch (PVE):** Theo cốt truyện, chinh phục từng khu vực, học cơ chế điều quân, mở khóa đơn vị và kỹ năng.
- **Đấu trường (PVP):** Chiến đấu trực tuyến giành quyền kiểm soát lãnh thổ, dựa trên hệ thống máy chủ thẩm quyền.

### Cơ chế nổi bật
- Điều khiển kéo line trực quan  
- Hệ thống tài nguyên đa dạng  
- Nhân vật vua có kỹ năng đặc biệt  
- Hai chế độ PVE/PVP tách biệt  

---

## 5. Thiết kế kỹ thuật

- **Engine:** Godot 4.x  
- **Đồ họa:** 2D (tilemap + sprite + particle)  
- **Âm thanh:** WAV/OGG, sử dụng bus mixer tích hợp  
- **Dữ liệu:** JSON/TRES (cục bộ), REST/WebSocket cho đồng bộ  
- **Quản lý mã nguồn:** Git + GitHub (trunk-based)  
- **CI/CD:** GitHub Actions auto-export Windows  

---

## 6. Thiết kế hệ thống

- **Đơn vị:** Bộ binh, Kỵ binh, Cung thủ, Pháp sư  
- **Công trình:** Trại huấn luyện, tháp canh, kho tài nguyên, banner tăng sĩ khí  
- **Nhân vật vua:** Có kỹ năng chủ động & bị động; mở khóa theo tiến trình  
- **Bản đồ:** Dạng graph (node = vùng, edge = đường liên kết)  
- **Chiến dịch:** Mở khóa vùng → đơn vị → kỹ năng  
- **Lưu trữ:** Snapshot JSON, save theo tiến trình vùng  

---

## 7. Yếu tố độc đáo

- **Chiến thuật + kinh tế:** Không chỉ chiến đấu, mà còn quản lý và phát triển tài nguyên.
- **Cốt truyện cảm xúc:** Tập trung vào hành trình phục quốc.
- **Cơ chế điều khiển mới:** Kéo line mượt, phân bổ quân theo spline.
- **Cross-platform:** Build trên Windows, có thể mở rộng sang mobile.

---

## 8. Hiệu năng & tối ưu

- **Mục tiêu:** 60 FPS trên laptop phổ thông (iGPU).
- **Tối ưu:**
  - Batch sprite
  - Tránh GC spike
  - Tick cố định 30–60 TPS
- **Giới hạn khung hình:**
  - Logic ≤ 4 ms
  - Render ≤ 8 ms

---

## 9. Quy ước & quản lý dự án

- **Code style:**
  - `snake_case` (file/script)
  - `PascalCase` (class)
- **Nhánh Git:** `main` → `feature/*` → PR review
- **Tag phiên bản:** `v0.1-prototype` → `v0.4-pvp`
- **QA & Telemetry:** Analytics trận đấu, heatmap tử vong, log crash

---

## 10. Rủi ro & giải pháp

| Rủi ro                               | Giải pháp                                     |
|--------------------------------------|-----------------------------------------------|
| Đồng bộ mạng khó đảm bảo determinism | Sử dụng fixed timestep, int math, replay tool |
| Điều quân theo line dễ gây kẹt       | Steering + regroup node                       |
| Cân bằng tài nguyên dễ snowball      | Command Points + upkeep nhẹ + bonus phòng thủ |

---

## 11. Kết luận

Dự án **“A”** kết hợp giữa chiến thuật cổ điển và cảm xúc hiện đại, mang lại trải nghiệm RTS mới mẻ, có chiều sâu và phù hợp với thị hiếu người chơi Đông Nam Á.

Nhóm phát triển hiện đang hoàn thiện bản prototype PVE, tiến tới mở rộng PVP nội bộ và phát hành thương mại.
