# GAME DESIGN DOCUMENT – PHẦN ĐỊNH HƯỚNG

(Version 1.0 – dùng cho toàn team)

***
## 1. GIỚI THIỆU CƠ BẢN
#### 1.1 Tên dự án 
Project A (tên tạm – chưa cần khóa sớm)
#### 1.2 Thể loại

RTS 2D – Chiến thuật thời gian thực
Kết hợp:

- Điều quân thời gian thực

- Quản lý tài nguyên – kinh tế

- Chiến dịch cốt truyện tuyến tính → bán mở

#### 1.3 Trải nghiệm cốt lõi (High Concept – 1 câu)

Người chơi vào vai một vị vua trẻ bị mất nước, từng bước xây dựng lại lực lượng và lãnh thổ thông qua chiến thuật, kinh tế và những quyết định mang tính sống còn.



## 2. CORE LOOP (VÒNG LẶP CỐT LÕI)

#### 2.1 CORE LOOP (VÒNG LẶP CỐT LÕI)



Chuẩn bị → Điều quân → Giao tranh → Thu lợi → Phát triển → Mở vùng mới
↑_________________________________________________________________↓

#### 2.2 Core Loop chi tiết (trong 1 trận / 1 vùng)

- Chuẩn bị

- Chọn vùng tấn công

- Phân bổ quân

- Quyết định dùng hay giữ kỹ năng vua

- Điều quân thời gian thực

- Kéo line chỉ hướng di chuyển / tấn công

- Quyết định tập trung hay chia quân

- Phản ứng với thay đổi chiến trường

- Giao tranh

- Đơn vị va chạm → tính toán sát thương

- Tài nguyên bị tiêu hao

- Rủi ro mất quân là thật (không reset miễn phí)

- Thu lợi

- Chiếm vùng → nhận tài nguyên / bonus

- Mở khóa node tiếp theo

- Phát triển

- Nâng công trình

- Mở đơn vị / kỹ năng

- Chuẩn bị cho vùng khó hơn
#### 2.3 Core Loop meta (toàn campaign)
Vùng nhỏ → Học cơ chế → Thất bại nhẹ → Tối ưu → Thắng lớn → Phục hồi đế chế

👉 Cảm xúc chủ đạo:

- Đầu game: Căng thẳng – thiếu thốn

- Mid game: Cân não – lựa chọn khó

- Late game: Thỏa mãn – kiểm soát cục diện

## 3. CORE PILLAR (TRỤ CỘT THIẾT KẾ)

Pillar = ranh giới
Có feature nào hay đến mấy mà phá pillar → loại.

### PILLAR 1 – CHIẾN THUẬT THỜI GIAN THỰC RÕ RÀNG



### PILLAR 2 – QUẢN LÝ TÀI NGUYÊN 
- các tower (đồng ruộng , thành lũy )
- quân (bộ binh, pháo binh , cung binh, thợ xây)
- các tower dạng tấn công ( tháp pháo )


### PILLAR 3 - Cơ chế tướng
- cơ chế điều kiện: cung cấp điều khiển cho người chơi với lại cung cấp trí tuệ cứng
nội tại và vùng ảnh huỏng


- cơ chế xuất hiện ( core, chất vị vua )
+ Core :  khi lượng quân của 1 khu vực 
+ chất vua:  do lựa chọn ( ngẫu nhiên ) . Để cách mở khóa tướng . khi kéo line tìm loại tài nguyên " bệ đá " => điều kiện mở khóa tướng

- cơ chế cấp bậc: đội trưởng <nhóm quân> ( không di chuyển, điểm tập kết quân ) - tướng ( có di chuyển quân ) (nếu tướng chết debuff, vùng ảnh hưởng ) - đại tướng quân (cho buff mạnh)


### PILLAR 4 – NHÂN VẬT VUA LÀ TRUNG TÂM
vua sẽ không chỉ 1 loại


### PILLAR 5 – CỐT TRUYỆN PHỤC VỤ GAMEPLAY



## 4. DIRECTION – DANH SÁCH TÍNH NĂNG (PHẠM VI CÓ KIỂM SOÁT)

Đây không phải wishlist, mà là ranh giới triển khai

#### 4.1 Có trong phiên bản đầu (Prototype → Alpha)

Gameplay

Điều quân kéo line

4 loại đơn vị cơ bản

Bản đồ dạng graph (node – edge)

PVE campaign tuyến tính

Hệ thống

Tài nguyên cơ bản

Nâng cấp đơn vị

Kỹ năng vua (ít nhưng chất)

#### 4.2 Có sau (Beta / mở rộng)

PVP online

Map random / bán random

Faction khác

Passive synergy sâu hơn

#### 4.3 Không làm (hoặc rất muộn)

❌ Open world RTS
❌ Base building quá phức tạp
❌ Auto-battle
❌ Gacha / pay-to-win


cách để player nạp :
+ skin : king, maps
+ packs: chứa nhân vật ( tướng chất hero )