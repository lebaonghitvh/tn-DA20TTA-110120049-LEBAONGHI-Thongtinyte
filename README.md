# tn-DA20TTA-110120049-LEBAONGHI-Thongtinyte

[![Open in Visual Studio Code](https://img.shields.io/static/v1?logo=visualstudiocode&label=&message=Open%20in%20Visual%20Studio%20Code&labelColor=2c2c32&color=007acc&logoColor=007acc)](https://open.vscode.dev/microsoft/Web-Dev-For-Beginners)


## Mục Tiêu
 Hệ thống thông tin y tế gồm các chức năng như:
  - Đặt lịch tiêm chủng.
  - Đặt lịch khám sức khỏe.
  - Hồ sơ khám sức khỏe.
  - Các dịch vụ y tế.
  - Các loại Vaccine.
  - Người thân của giảng viên.

## Kiến Trúc
Hệ thống sử dụng . Các thành phần chính của hệ thống bao gồm:
- **PHP**: Xử lý logic, và kết nối cơ sở dữ liệu.
- **MySQL**: Lưu trữ hồ sơ sức khỏe và người dùng.


## Phần Mềm Cần Thiết
Để triển khai dự án, bạn cần cài đặt các phần mềm sau:
- PHP phiên bản 7.3 đến 8.0
- Xampp

## Cách Thức Chạy Chương Trình

### Cài Đặt
1. **Cài đặt PHP và Xampp**:
   - Cài đặt PHP phiên bản từ 7.3 đến 8.0.
   - Xampp

2. **Tải dự án từ GitHub**:
    ```sh
      https://github.com/lebaonghitvh/tn-DA20TTA-110120049-LEBAONGHI-Thongtinyte.git
    ```

3. **Thiết lập dự án**:
    ```sh
    composer install
    composer update
    ```

### Chạy Dự Án
1. **Xóa liên kết tượng trưng cũ trong thư mục công khai **:
    ```sh
    Remove-Item -Recurse -Force public\storage
    ```

2. **Tạo liên kết tượng trưng mới trong thư mục công khai **:
    ```sh
    php artisan storage:link
    ```

3. **Tạo bảng cơ sở dữ liệu**:
    ```sh
    php artisan migrate:fresh --seed
    ```

4. **Khởi động dự án**:
    ```sh
    php artisan serve
    ```

5. **Truy cập địa chỉ localhost xuất hiện**:
    ```sh
    http://127.0.0.1:8000/
    ```

## Thông Tin Liên Hệ Tác Giả
- **Họ Tên**: Lê Bảo Nghi
- **Email**: lebaonghitvh@gmail.com
