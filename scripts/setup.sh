#!/bin/bash

echo "📁 MCP 기본 디렉토리 구조 생성 중..."

# 기본 디렉토리 구조 생성
mkdir -p .github/workflows
mkdir -p context
mkdir -p cursor/snippets
mkdir -p cursor/extensions
mkdir -p cursor/settings
mkdir -p cursor/cursorrules-templates
mkdir -p claude/prompts/code-review
mkdir -p claude/prompts/code-generation
mkdir -p claude/prompts/debugging
mkdir -p claude/scripts
mkdir -p claude/examples
mkdir -p templates/component-templates
mkdir -p templates/service-templates
mkdir -p templates/test-templates
mkdir -p templates/cursor
mkdir -p docs/setup
mkdir -p docs/workflows
mkdir -p docs/api
mkdir -p docs/troubleshooting
mkdir -p integrations/github-cursor
mkdir -p integrations/cursor-claude
mkdir -p integrations/ci-integration
mkdir -p analytics/metrics
mkdir -p analytics/reports
mkdir -p tests/integration
mkdir -p tests/performance
mkdir -p config/defaults
mkdir -p config/environments
mkdir -p plugins/core
mkdir -p plugins/community
mkdir -p scripts

# 기본 파일 생성
touch .cursorrules
touch .gitignore
touch package.json
touch README.md
touch context/.gitkeep

# .gitignore 기본 설정
echo "# Dependencies
**/node_modules/
**/.pnp
.pnp.js

# Testing
**/coverage/

# Production
**/build/
**/dist/

# Misc
.DS_Store
.env
.env.local
.env.development.local
.env.test.local
.env.production.local
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# IDE
.idea/
.vscode/
*.swp
*.swo

# Integration
medusa-integration/" > .gitignore

# README.md 기본 설정
echo "# MCP (Modern Code Platform)

## 개요
MCP는 Claude와 Cursor를 활용한 현대적인 코드 개발 플랫폼입니다.

## 주요 기능
- Claude 기반 코드 리뷰
- 자동화된 테스트 및 배포
- 통합 개발 환경 설정
- 문서화 및 가이드

## 시작하기
\`\`\`bash
# 초기화 스크립트 실행
bash scripts/setup.sh
\`\`\`

## 문서
- [설치 가이드](docs/setup/README.md)
- [워크플로우 가이드](docs/workflows/README.md)
- [API 문서](docs/api/README.md)
- [문제 해결](docs/troubleshooting/README.md)" > README.md

echo "✅ MCP 프로젝트 기본 구조 완료!" 