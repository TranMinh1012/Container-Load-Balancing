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
      
- POST: Phương thức Post là phương thức gửi dữ liệu đến server giúp người dùng có thể thêm mới dữ liệu hoặc cập nhật dữ liệu đã có vào database. Gửi thông tin cần thêm hoặc cập nhật trong phần body request.

- Một số đặc điểm chính:
      
      + Dữ liệu cần thêm hoặc cập nhật không được hiển thị trong URL của trình duyệt.
      
      + Dữ liệu không được lưu trong lịch sử trình duyệt.
      
      + Không có hạn chế về độ dài của dữ liệu.
      
      + Hỗ trợ nhiều kiểu dữ liệu như: String, binary, integers,..
      
- PUT: Cách hoạt động tương tự như Post nhưng nó chỉ được sử dụng để cập nhật dữ liệu đã có trong database. Khi sử dụng PUT, phải sửa toàn bộ dữ liệu của một đối tượng.

- PATCH: PATCH được sử dụng khi phải cập nhật một phần dữ liệu của đối tượng

- DELETE:  Khi sử dụng phương thức DELETE sẽ xoá các dữ liệu của server về tài nguyên thông qua URI. Cũng giống như GET, phương thức này không có body request.

- HEAD: HEAD gần giống giống với lại GET, tuy nhiên nó không có response body. 

Truy vấn HEAD hữu ích khi chúng ta sử dụng nó để kiểm tra API có hoạt động không do không có response body nên thời gian phản hồi nhanh hơn so với phương thức Get. Và thường được sử dụng để kiếm tra trước khi download file do cứ gọi đến api dowload sẽ download file nên thêm phương thức head vào nó kiểm tra xem api có đang hoạt động tốt không tránh down nhiều.

# Cấu trúc của một URL (Uniform Resource Locator)

Một URL được sử dụng để xác định duy nhất một tài nguyên trên Web. Một URL có cấu trúc gồm 5 phần chính: **scheme**, **subdomain**, **top-level domain** , **second-level domain**, và **subdirectory**.

- **Scheme**: hiển thị cho máy chủ web sử dụng giao thức nào khi truy cập một trang trên web. HTTPS là giao thức phổ biến nhất 

- **Subdomain**: Thường được gọi là tên miền con của tên miền chính. Chính vì là miền con của miền chính nên tên miền con này mang đầy đủ những tính chất như một miền chính và chúng ta có thể sử dụng nó giống như miền chính. Đặc điểm để nhận dạng là tên của chúng có chứa tiền tố đằng trước tên miền chính

- **Second-level domain**(SLD): Được coi như là tên của website mà người dùng đặt cho nó. SLD giúp người dùng nhận ra họ đang truy cập vào trang web của một thương hiệu hay cá nhân nhất định.

- **Top-level domain**: Hay còn được gọi với cái tên là tên miền chỉ định loại miền mà bạn đã đăng kí. Ví dụ:
      
      .com
      
      .net
      
      .org
      
      .gov
      
      .edu
      
      .vn
      
      .asia
      
- **Subdirectory**: (subfolder) cung cấp cho người dùng cái nhìn trực quan về phần cụ thể của trang web mà người dùng đang truy cập.

# HTTP Status Code

HTTP status code là yếu tố quan trọng trong HTTP message response được server trả về cho client. Chia thành 5 loại:

- 1xx (100-199)  Phản hồi thông tin: Yêu cầu đã được chấp nhận và quá trình xử lý yêu cầu của người dùng đang được tiếp tục.

- 2xx (200-299): Phản hồi thành công: Yêu cầu của người dùng đã được máy chủ tiếp nhận, hiểu và xử lý thành công.

- 3xx (300-399): Điều hướng: Phía client cần thực hiện hành động bổ sung để hoàn tất yêu cầu.

- 4xx (400-499): Lỗi phía client: Yêu cầu không thể hoàn tất hoặc yêu cầu chứa cú pháp không chính xác. 4xx sẽ hiện ra khi có lỗi từ phía client do không đưa ra yêu cầu hợp lệ.

- 5xx (500-599): Lỗi phía server: Máy chủ không thể hoàn thành yêu cầu được cho là hợp lệ. Khi 5xx xảy ra, bạn chỉ có thể đợi để bên hệ thống máy chủ xử lý xong.

# HTTP status code phổ biến:

      + 200 OK: Yêu cầu đã thành công.
      
      + 201 Created: Yêu cầu đã thành công và kết quả là một tài nguyên mới đã được tạo. Đây thường là phản hồi được gửi sau các yêu cầu POST hoặc một số yêu cầu PUT.
      
      + 400 Bad Request: Máy chủ không thể hiểu yêu cầu do cú pháp không hợp lệ.
      
      + 401 Unauthorized: Request cần có auth. Có nghĩa là, client phải các tự xác thực chính mình để nhận được phản hồi đã yêu cầu.
      
      + 404 Not found:đối tượng không được lưu trên máy chủ (không tìm thấy)
      
      + 500 Internal Server Error: Một thông báo chung, được đưa ra khi máy chủ gặp phải một trường hợp bất ngờ, message cụ thể không phù hợp.
      
      + 505 HTTP Version Not Supported: Máy chủ không hỗ trợ phiên bản “giao thức HTTP”.

