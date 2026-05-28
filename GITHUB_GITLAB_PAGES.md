# 🔥 GitHub Pages / GitLab Pages 배포 가이드

## ⚠️ 중요 제약사항
GitHub Pages와 GitLab Pages는 **정적 파일만 호스팅** 가능합니다.
- ✅ HTML, CSS, JavaScript, 이미지, 폰트 등 정적 파일 제공
- ❌ 서버 사이드 처리 불가
- ❌ 백엔드 API 불가
- ❌ 데이터베이스 연결 불가

**당신의 index.html은 100% 정적 파일이므로 완벽하게 호환됩니다!** ✅

---

## 🚀 GitHub Pages 배포 (추천)

### 1단계: GitHub 리포지토리 생성
```bash
# 로컬에서
git init
git add .
git commit -m "Initial commit: GoldFireDragon UnCensored Browser"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/goldfire-dragon.git
git push -u origin main
```

### 2단계: GitHub Pages 설정
1. GitHub 리포지토리 → **Settings**
2. 왼쪽 메뉴 → **Pages**
3. **Source**: Deploy from a branch
4. **Branch**: main / master 선택
5. **Folder**: `/ (root)` 또는 `/assets`
   - 권장: assets 폴더 사용 시 `/assets` 선택
6. **Save** 클릭

### 3단계: 자동 배포 확인
- 푸시 시 자동으로 `.github/workflows/deploy.yml` 실행
- 몇 초 후 리포지토리 → Deployments에서 URL 확인
- 배포 URL: `https://YOUR_USERNAME.github.io/goldfire-dragon`

### 4단계: 커스텀 도메인 (선택사항)
1. 도메인 구매 (godaddy, namecheap 등)
2. DNS A 레코드 설정:
   ```
   Type: A
   Name: @
   Value: 185.199.108.153
           185.199.109.153
           185.199.110.153
           185.199.111.153
   ```
3. GitHub → Settings → Pages → **Custom domain**: yourdomain.com 입력

---

## 🚀 GitLab Pages 배포

### 1단계: GitLab 리포지토리 생성
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://gitlab.com/YOUR_USERNAME/goldfire-dragon.git
git push -u origin main
```

### 2단계: GitLab Pages 설정
`.gitlab-ci.yml` 파일이 자동으로 배포를 트리거합니다.
- Merge → main 브랜치에 푸시
- GitLab이 자동으로 `public/` 폴더에 배포
- 배포 URL: `https://YOUR_USERNAME.gitlab.io/goldfire-dragon`

### 3단계: 배포 상태 확인
1. 리포지토리 → **CI/CD** → **Pipelines**
2. 초록색 체크마크 = 배포 완료
3. **Deployments**에서 URL 확인

---

## 📊 GitHub Pages vs GitLab Pages 비교

| 항목 | GitHub Pages | GitLab Pages |
|------|---|---|
| **무료** | ✅ 무제한 | ✅ 무제한 |
| **자동 배포** | ✅ 있음 (.github/workflows) | ✅ 있음 (.gitlab-ci.yml) |
| **커스텀 도메인** | ✅ 지원 | ✅ 지원 |
| **HTTPS** | ✅ 자동 (Let's Encrypt) | ✅ 자동 (Let's Encrypt) |
| **저장소 크기** | 1GB | 무제한 |
| **대역폭** | 무제한 | 무제한 |
| **배포 속도** | ~1-2분 | ~1-2분 |
| **개인정보** | Private 리포 가능 | Private 리포 가능 |

---

## 🔗 OpenVPN 파일 다운로드
GitHub Pages에 호스팅되면 `.ovpn` 파일도 모두 다운로드 가능합니다:
```
https://YOUR_USERNAME.github.io/goldfire-dragon/Japan/IPS_219.100.37.170_tcp_443.ovpn
```

브라우저에서 직접 다운로드하거나, OpenVPN GUI에 드래그 앤 드롭으로 추가 가능합니다.

---

## ✅ 배포 체크리스트

### GitHub Pages
- [ ] GitHub 계정 생성 (github.com)
- [ ] 새 리포지토리 생성 (`goldfire-dragon`)
- [ ] 로컬 코드 푸시
- [ ] Settings → Pages 설정
- [ ] Branch 선택 (main)
- [ ] 배포 URL 확인
- [ ] 커스텀 도메인 (선택)

### GitLab Pages
- [ ] GitLab 계정 생성 (gitlab.com)
- [ ] 새 리포지토리 생성
- [ ] 로컬 코드 푸시
- [ ] `.gitlab-ci.yml` 파일 확인
- [ ] CI/CD → Pipelines 확인 (초록색 체크)
- [ ] 배포 URL 확인 (Deployments)

---

## 🎯 24/7 호스팅 여부

| 플랫폼 | 24/7 호스팅 | 속도 | 비용 |
|---|---|---|---|
| **GitHub Pages** | ✅ 24/7 항상 온라인 | 빠름 | **무료** |
| **GitLab Pages** | ✅ 24/7 항상 온라인 | 빠름 | **무료** |

두 플랫폼 모두 **진정한 24/7 무료 호스팅**입니다! 🎉

---

## 🚨 주의사항

1. **Private 리포지토리 + GitHub Pages**
   - GitHub Pro ($4/월) 필요
   - Public 리포는 무료

2. **Private 리포지토리 + GitLab Pages**
   - 무료로 가능
   - Private 리포에서도 Pages 배포 가능

3. **파일 크기 제한**
   - GitHub: 1GB 저장소 (충분함)
   - GitLab: 무제한

4. **빌드 시간**
   - GitHub: 무료 (무제한)
   - GitLab: 월 400분 무료 (충분함)

---

## 🔥 추천 방법

**GitHub Pages** 추천:
- 더 많은 사용자 커뮤니티
- UI가 직관적
- 쉬운 설정

**GitLab Pages** 추천:
- Private 리포가 무료
- 더 나은 개인정보 보호
- 무제한 저장소

---

## 📝 다음 단계

1. GitHub 또는 GitLab 계정 생성
2. 리포지토리 생성 및 코드 푸시
3. Pages 설정 완료
4. URL 접속하여 배포 확인
5. (선택) 커스텀 도메인 연결

**배포 후 즉시 세계 어디서나 24/7 접속 가능합니다!** 🌍
