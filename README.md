# Giao thức HTTP

HTTP (HyperText Transfer Protocol - Giao thức truyền tải siêu văn bản) là một trong các giao thức chuẩn về mạng Internet, được dùng để liên hệ thông tin giữa Máy cung cấp dịch vụ (Web server) và Máy sử dụng dịch vụ (Web client), là giao thức Client/Server dùng cho World Wide Web – WWW

HTTP là một giao thức ứng dụng của bộ giao thức TCP/IP (các giao thức nền tảng cho Internet).

# Các method phổ biến:

- GET:  là phương thức được Client gửi dữ liệu lên Server thông qua đường dẫn URL nằm trên thanh địa chỉ của Browser. Server sẽ nhận đường dẫn đó và phân tích trả về kết quả. Hơn nữa, nó là một phương thức được sử dụng phổ biến mà không cần có request body.

- Một số đặc điểm chính:
      
      + Giới hạn độ dài của các giá trị là 255 kí tự.
      
      + Chỉ hỗ trợ các dữ liệu kiểu String.
      
      + Có thể lưu vào bộ nhớ cache.
      
      + Các tham số truyền vào được lưu trữ trong lịch sử trình duyệt.
      
      + Có thể được bookmark (đánh dấu rồi xem lại sau) do được lưu trong lịch sử trình duyệt.
      
- POST: 
