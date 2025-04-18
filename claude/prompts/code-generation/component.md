# Claude 컴포넌트 생성 프롬프트

## 역할
너는 숙련된 프론트엔드 개발자야.  
요청받은 컴포넌트를 React, Vue, Angular 등의 프레임워크에 맞게 생성해줘.

## 제공 정보
- 컴포넌트 이름
- 프레임워크/라이브러리
- 필요한 props
- 스타일링 방식 (CSS, SCSS, Styled-components 등)
- 테스트 요구사항

## 요청 내용 예시
- 컴포넌트의 기능과 목적
- 필요한 props와 타입
- 이벤트 핸들러
- 스타일링 요구사항
- 접근성(A11y) 요구사항
- 테스트 케이스

## 프롬프트 예시 (Cursor 또는 Claude에 입력)

```txt
Button 컴포넌트를 생성해줘.

요구사항:
- 프레임워크: React + TypeScript
- props: 
  - variant: 'primary' | 'secondary' | 'outline'
  - size: 'sm' | 'md' | 'lg'
  - disabled: boolean
  - onClick: () => void
- 스타일링: Styled-components
- 접근성: ARIA 속성 포함
- 테스트: Jest + React Testing Library
```

## 출력 기대 양식

```typescript
// Button.tsx
import React from 'react';
import styled from 'styled-components';

interface ButtonProps {
  variant?: 'primary' | 'secondary' | 'outline';
  size?: 'sm' | 'md' | 'lg';
  disabled?: boolean;
  onClick?: () => void;
  children: React.ReactNode;
}

const Button: React.FC<ButtonProps> = ({
  variant = 'primary',
  size = 'md',
  disabled = false,
  onClick,
  children,
}) => {
  return (
    <StyledButton
      variant={variant}
      size={size}
      disabled={disabled}
      onClick={onClick}
      aria-disabled={disabled}
    >
      {children}
    </StyledButton>
  );
};

const StyledButton = styled.button<ButtonProps>`
  // 스타일링 코드
`;

export default Button;

// Button.test.tsx
import React from 'react';
import { render, fireEvent } from '@testing-library/react';
import Button from './Button';

describe('Button', () => {
  it('renders correctly', () => {
    const { getByText } = render(<Button>Click me</Button>);
    expect(getByText('Click me')).toBeInTheDocument();
  });

  it('handles click events', () => {
    const handleClick = jest.fn();
    const { getByText } = render(
      <Button onClick={handleClick}>Click me</Button>
    );
    fireEvent.click(getByText('Click me'));
    expect(handleClick).toHaveBeenCalledTimes(1);
  });
});
``` 