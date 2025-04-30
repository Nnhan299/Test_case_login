
# README - Test casecase login với Robot Framework

## Mô tả
Tập tin `.robot` này được sử dụng để kiểm thử chức năng **login** bằng Robot Framework kết hợp với SeleniumLibrary.

## Công cụ sử dụng
- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary)
- Trình duyệt: Chrome

## Cấu trúc file
- **Test Cases**
  - `Login with valid credentials`: Mở trang đăng nhập, điền tài khoản, mật khẩu và nhấn nút đăng nhập.
  
- **Variables**
  - `${URL}`: Địa chỉ trang web cần kiểm thử
  - `${USERNAME}`: Tên đăng nhập hợp lệ
  - `${PASSWORD}`: Mật khẩu hợp lệ

- **Settings**
  - Sử dụng `SeleniumLibrary`
  

## Cách chạy
1. Cài đặt Robot Framework và SeleniumLibrary:
   ```bash
   pip install robotframework selenium
   ```

2. Chạy testcase:
   ```bash
   baitapbaitap.robot
   ```


