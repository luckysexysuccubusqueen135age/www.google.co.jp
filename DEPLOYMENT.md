# GoldFireDragon UnCensored Browser — 24/7 호스팅 가이드

## 🚀 현재 상태
✅ Docker 이미지 빌드 성공  
✅ Nginx 웹 서버 실행 중 (포트 80)  
✅ OpenVPN 설정 파일 마운트 완료 (assets/Japan/)  
✅ index.html 호스팅 중

## 📋 파일 구조
```
.
├── Dockerfile           # Nginx 기반 웹 서버 컨테이너
├── docker-compose.yml   # 컨테이너 오케스트레이션 (restart: always)
├── .dockerignore        # 불필요한 파일 제외
├── assets/
│   ├── index.html       # 메인 페이지
│   ├── Japan/           # OpenVPN .ovpn 설정 파일들 (70+개)
│   ├── fonts/
│   ├── icon/
│   └── img/
```

## 💻 로컬 실행
```bash
# 빌드 및 실행
docker-compose up -d --build

# 상태 확인
docker ps
docker-compose logs -f

# 중지
docker-compose down
```

## 🌐 무료 클라우드 배포 옵션

### 1️⃣ **Render.com** (추천: 무료 웹 서비스 + 자동 배포)
- 월 750시간 무료 (24시간 × 31일 = 744시간)
- GitHub 연결 시 자동 배포
- 30분 유휴 시 일시 중단 (무료 플랜)

**배포 단계:**
1. GitHub에 리포지토리 생성 및 푸시
2. Render.com에서 GitHub 계정 연결
3. "New+" → "Web Service" → GitHub 리포 선택
4. Build Command: `docker-compose build`
5. Start Command: `docker-compose up`
6. 환경 변수 PORT=80 설정

---

### 2️⃣ **Railway.app** (가장 간단)
- 월 $5 무료 크레딧 (대부분 무료 범주)
- Docker Compose 직접 지원
- 자동 배포

**배포 단계:**
1. GitHub 리포지토리 준비
2. Railway.app 가입 → GitHub 연결
3. "Deploy from GitHub" → 리포 선택
4. 자동으로 docker-compose.yml 감지 및 배포

---

### 3️⃣ **Fly.io** (성능 최고)
- 3개 공유 CPU 인스턴스 무료
- 160GB 대역폭 무료
- 24/7 운영 가능

**배포 단계:**
1. `flyctl auth login` → 계정 생성
2. `flyctl launch` → app.toml 생성
3. `flyctl deploy`

**app.toml 예시:**
```toml
app = "goldfire-dragon"
primary_region = "nrt" # 도쿄

[build]
  image = "registry.fly.io/goldfire-dragon:latest"

[[services]]
  protocol = "tcp"
  internal_port = 80
  ports = [{ port = 80 }]
```

---

### 4️⃣ **AWS Lightsail** (매달 3.50 USD ~ 무료 크레딧 가능)
- 처음 3개월 50% 할인
- 24/7 온라인 유지
- Ubuntu 인스턴스 + Docker 설치 후 실행

---

### 5️⃣ **Oracle Cloud** (항상 무료)
- 2개 컴퓨트 인스턴스 영구 무료
- 최대 10TB 저장소
- 24/7 실행 가능

---

## ⚠️ 중요 사항
1. **내 컴퓨터 켜두기** (현재 상태)
   - 가장 간단한 방법
   - 전기료만 소비
   - 인터넷 항상 켜두기 필요

2. **무료 클라우드 (Render 등)**
   - 30분~1시간 유휴 후 중단
   - 웹 요청 시 자동 재시작 (5~10초 걸림)
   - "항상 켜짐"이 아님

3. **진정한 24/7 호스팅**
   - Fly.io, Oracle Cloud, AWS 권장
   - 월 0~5 USD 예상 비용
   - 도메인 구매 시 추가 비용

---

## 🔗 OpenVPN 설정 파일 활용
- 모든 `.ovpn` 파일이 `/Japan/` 에 마운트됨
- 클라이언트에서 다운로드 후 OpenVPN GUI로 연결 가능
- 예: `http://your-domain/Japan/IPS_219.100.37.170_tcp_443.ovpn`

---

## 🛠️ 다음 단계
1. GitHub에 코드 푸시
2. Render.com 또는 Railway.app에 배포
3. 커스텀 도메인 연결 (선택사항)
4. 정기적 모니터링

---

**현재 로컬에서는 정상 작동 중입니다!** 🎉
