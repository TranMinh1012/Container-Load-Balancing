# Giao thức HTTP
3cQBwmaZ]snc-36\3iMDqXsJ4p_7-4H"
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
     
- header Host: Chỉ định máy chủ và port của máy chủ mà yêu cầu đang được gửi. Nếu không có cổng nào được bao gồm, cổng mặc định của yêu cầu được sử dụng (443 cho URL HTTPS và 80 cho URL HTTP)   
- User-Agent: chứa thông tin về tác nhân người sử dụng tạo yêu cầu: ứng dụng, hệ điều hành, nhà cung cấp và phiên bản. Ví dụ: User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36
- Content-Type: Trường này chỉ dẫn kiểu phương tiện của phần thân đối tượng được gửi tới người nhận. Ví dụ: Content-Type: application/json; charset=utf-8
- Content-Length: Cho biết kích thước của thân thông báo, bằng byte, được gửi cho người nhận. Độ dài theo số thập phân của hệ 8. Ví dụ: Content-Length: 4514
- Cookie: chứa cookie HTTP được lưu trữ được liên kết với máy chủ (tức là trước đây được gửi bởi máy chủ với Set-Cookie header hoặc đặt trong JS sử dụng Document.cookie). là tùy chọn và có thể được bỏ qua nếu, ví dụ: Cài đặt quyền riêng tư của trình duyệt block cookie.

      Cú pháp: "Cookie: name=value". Ví dụ: Cookie: PHPSESSID=298zf09hf012fh2.
      
- Location: được sử dụng để điều hướng lại người nhận tới một vị trí khác ngoài Reqest-URI. Ví dụ: Location: http://www.tutorialspoint.org../http/index.jsp

# Các kiểu encode data trong POST request:

- application/x-www-form-urlencoded: là kiểu mã hóa mặc định nếu thuộc tính enctype không có giá trị, đại diện cho URL Encoded Form. Tất cả các ký tự được mã hóa trước khi gửi (khoảng trắng được chuyển đổi thành ký hiệu "+" hoặc "%20" và các ký tự đặc biệt được chuyển đổi thành giá trị ASCII HEX).

      Kiểu mã hóa được dùng là kiểu URL Encoded. Hiểu đơn giản thì dữ liệu được biểu diễn dưới dạng (key, value), nối với nhau bằng ký hiệu & thành một chuỗi (long string). Trong mỗi cặp (key, value), key và value tách nhau bởi dấu "="
      
      Ở trường Content-Type trên header của request có xác định kiểu mã hóa là application/x-www-form-urlencoded

- multipart/form-data: đại diện cho Multipart form, kiểu mã hóa này được sử dụng khi người dùng muốn tải tệp dữ liệu lên.

      Ngoài giá trị multipart/form-data, ở Content-Type còn có giá trị boundary. Giá trị này do trình duyệt tạo ra. 
      
      Mỗi cặp (key, value) được biểu diễn dưới dạng:
      
      
            --<<boundary_value>>
            Content-Disposition: form-data; name="<<field_name>>"

            <<field_value>>
            

Như vậy, với kiểu mã hóa application/x-www-form-urlencoded, mỗi cặp (key, value) được phân cách với nhau bằng dấu & cho chép server biết nơi bắt đầu và kết thúc của một tham số. Còn với kiểu multipart/form-data, các giá trị boundary thực hiện công việc này.

- text/plain: Là một kiểu mới trong HTML 5, dữ liệu gửi lên mà ko có mã hóa.

      Kiểu mã hóa này gần giống với kiểu URL encoded forms, ngoại trừ việc các trường của form không được mã hóa khi gửi lên server. Kiểu này không được dùng rộng rãi vì định dạng này có thể đọc được và kém bảo mật.

# Tìm hiểu công cụ Burpsuite

Burp Suite là một trong những công cụ kiểm tra thâm nhập và tìm lỗ hổng phổ biến nhất và thường được sử dụng để kiểm tra bảo mật ứng dụng web. Burp Suite là một công cụ dựa trên proxy được sử dụng để đánh giá tính bảo mật của các ứng dụng dựa trên web và thực hiện kiểm tra thực hành. Nó có các mô đun mạnh mẽ và được đóng gói với các phần mở rộng tùy chọn có thể tăng hiệu quả kiểm tra ứng dụng web. Burp Suite là một công cụ pentest ứng dụng web. Ngoài ra, giao diện của Burp cũng rất trực quan và thân thiện. Chúng ta có thể nhìn rõ request được gửi (Request) cũng như phản hồi từ phía server (Respone)

Một số tính năng nổi bật của Burpsuite:

      + Interception Proxy: được thiết kế để bắt các request từ đó có thể tùy ý sửa đổi trước khi các request này được gửi lên server.
      + Repeater: cho phép sử dụng một request trước đó và tùy sửa đổi nội dung request một cách nhanh chóng nhiều lần khác nhau.
      + Intruder: tự động hóa việc gửi hàng loạt các request có chứa các payload tương tự nhau lên server.
      + Decoder: decode và encode string theo các format khác nhau (URL, Base64, HTML,…).
      + Comparer: chỉ ra sự khác nhau giữa các requests/responses
      + Extender: API để mở rộng chức năng của Burp Suite. Bạn có thể download các extensions thông qua Bapp Store.
      + Spider & Discover Content: crawl link có trong ứng dụng web.
      + Scanner (chỉ có trong bản Pro): đây là một mô đun khác mạnh mẽ, nó tự động quét các lỗ hổng trong ứng dụng web (XSS, SQLi, Command Injection, File Inclusion,…).
            
# Python socket:

https://stackoverflow.com/questions/28670835/python-socket-client-post-parameters

https://www.internalpointers.com/post/making-http-requests-sockets-python

https://stackoverflow.com/questions/2929532/http-basic-authentication-using-sockets-in-python

https://gist.github.com/saturn99/5e85a100d695dcbd343459d9906f285a

https://stackoverflow.com/questions/43408325/how-to-download-image-from-http-server-python-sockets










# Cloud Load Balancing

Là quá trình phân phối tài nguyên điện toán và khối lượng công việc và trong môi trường điện toán đám mây.

Giống như các giải pháp cân bằng tải khác, Cloud Load Balancing tối đa hóa tính khả dụng của tài nguyên và giảm chi phí hệ thống quản lý tài liệu.

Cloud Load Balancing phân bổ tính toán các tài nguyên và khối lượng công việc đồng đều trong môi trường đám mây để đảm bảo rằng các ứng dụng đám mây đạt được độ tin cậy và hiệu quả cao hơn. Các doang nghiệp sử dụng cloud load balancing để lưu trữ các tài nguyên phân tán giữa một số máy chủ ứng dụng, máy tính hoặc mạng để quản lý các yêu cầu của khách hàng một cách hiệu quả.

Giải pháp cloud load balancing có thể:

      + Tự động triển khai ứng dụng
      + Giúp bảo vệ các ứng dụng quan trọng của nhiệm vụ khỏi các lỗ hổng bảo mật
      + Tích hợp với các quy trình CI/CD
      + Di chuyển khối lượng công việc trên các đám mây công cộng
      + Cung cấp những hiểu biết chi tiết về trải nghiệm người dùng cuối
      + Cung cấp thang đo đàn hồi dựa trên tải ứng dụng
     
# Cloud Load Balancing Techniques

Cân bằng tải máy chủ đám mây tăng tốc hiệu suất, duy trì khả năng phục hồi ứng dụng và các dịch vụ và ứng dụng bảo vệ trong đám mây từ những thất bại chưa từng có. Dưới đây là cái nhìn kỹ hơn về một số tính năng của các thuật toán cân bằng tải đám mây và cách chúng được sử dụng.

      + Tự động hóa liền mạch
      + Hỗ trợ cho nhiều giao thức
      + Kiểm tra tình trạng hệ thống
      + Hiệu suất cao

# Lợi ích của việc cân bằng tải trong đám mây

      + Tự động hóa dễ dàng hơn
      + Ứng dụng hiệu suất cao
      + Quản lý liền mạch của sự gia tăng lưu lượng dữ liệu
      + Mềm dẻo
      + Độ tin cậy và khả năng mở rộng
      + Hiệu quả chi phí
      + Quản lý API khẩn cấp
 

**https://avinetworks.com/glossary/cloud-load-balancing/**

**https://middleware.io/blog/cloud-load-balancing/**

https://www.techtarget.com/searchcloudcomputing/definition/cloud-load-balancing

https://www.researchgate.net/figure/Cloud-Load-Balancing-Architecture-System-Model-The-proposed-system-model-based_fig1_317041605



























Hệ thống là một trang web hỗ trợ quản lý việc cho thuê truyện trong một cửa hàng. Trong đó, các thành viên hệ thống có thể đăng nhập để thực hiện các chức năng theo vai trò của mình. Khách hàng có thể đăng ký tài khoản trên hệ thống. Nếu khách hàng sử dụng email đã được sử dụng thì hệ thống sẽ báo email đã tồn tại và yêu cầu khách hàng nhập lại một email khác. Sau khi đăng ký tài khoản thành công, khách hàng có thể đăng nhập vào hệ thống và bắt đầu tìm và chọn truyện. Khách hàng nhập từ khóa truyện mình muốn tìm lên thanh tìm kiếm và click vào nút tìm kiếm. Nếu hệ thống báo không có kết quả thì khách hàng cần nhập lại từ khóa khác. Sau khi click nút tìm kiếm hệ thống sẽ hiển thị danh sách tất cả các đầu truyện có chứa từ khóa mà khách hàng vừa nhập. Khách hàng tìm đến đầu truyện mà mình muốn thuê và click vào đó để xem thông tin chi tiết của đầu truyện. Sau khi xem thông tin chi tiết của đầu truyện, khách hàng click vào nút thêm giỏ hàng để thêm đầu truyện đó vào trong giỏ hàng. Khách hàng lặp lại việc tìm và chọn cho đến khi hết các đầu truyện muốn thuê. Sau khi chọn đủ số truyện muốn thuê, khách hàng click vào nút thuê truyện. Hệ thống hiển thị phiếu mượn lên cho khách hàng để khách hàng xác nhận lại thông tin. Khách hàng click nút xác nhận thuê truyện thì hệ thống thông báo khách hàng đã thuê truyện thành công. Sau khi thuê truyện online trên hệ thống thành công, khách hàng có thể đến nhận truyện trực tiếp tại quầy. Khi đến  





https://www.techrepublic.com/article/how-to-allow-ssh-connections-from-lan-and-wan-on-different-ports/


https://bizflycloud.vn/tin-tuc/port-forwarding-la-gi-20220317171809152.htm

https://docs.google.com/document/d/1XJVvX4NvOIyKjpGrrARQHlJ0LrJmixIK/edit#






#PORT SWIGGER

1. Business logic vulnerabilities
phát sinh vì các nhóm thiết kế và phát triển đưa ra các giả định thiếu sót về cách người dùng sẽ tương tác với ứng dụng. Những giả định xấu này có thể dẫn đến xác thực không đầy đủ của đầu vào người dùng. khi kẻ tấn công đi chệch khỏi hành vi người dùng dự kiến, ứng dụng không thực hiện các bước thích hợp để ngăn chặn điều này và sau đó, không xử lý được tình huống một cách an toàn.

Để tránh các lỗ hổng logic, các nhà phát triển cần phải hiểu toàn bộ ứng dụng.

Phòng chống: 

+ Đảm bảo các nhà phát triển và người kiểm tra hiểu tên miền mà ứng dụng phục vụ

+ Tránh đưa ra các giả định ngầm về hành vi của người dùng hoặc hành vi của các phần khác của ứng dụng

Các bước làm:

access the lab -> đăng nhập vào tài khoản -> chọn sp lightweight -> click add to cart -> mở giỏ hàng -> bật intercept -> ấn vào dấu trừ -> sửa -1 thành -2
-> forward -> tắt intercept -> remove sp trong giỏ -> mua lại -> mua thêm 1 sp khác -> bật intercept -> click dấu trừ -> sửa số -> forward -> tắt intercept


2. Clickjacking
ClickJacking là một cuộc tấn công dựa trên giao diện trong đó người dùng bị lừa nhấp vào nội dung hành động trên trang web ẩn bằng cách nhấp vào một số nội dung khác trong trang web dụ. Kỹ thuật phụ thuộc vào việc kết hợp một trang web vô hình, có thể hành động (hoặc nhiều trang) chứa một nút hoặc liên kết ẩn, giả sử, trong một iframe.Các cuộc tấn công nhấp chuột sử dụng CSS để tạo và thao tác các lớp. Kẻ tấn công kết hợp trang web mục tiêu như một lớp iframe được phủ lên trên trang web dụ

Thẻ iFrame trong HTML là những inline frames được sử dụng để chèn một HTML Document bên trong một HTML Document khác. IFrame được sử dụng rộng rãi trong quá trình thiết kế website để chèn nội dung trực tiếp vào trang web từ các nguồn khác như nội dung quảng cáo, các control panel điều khiển,… Chỉ số z xác định thứ tự xếp chồng của các lớp iframe và trang web

phòng chống: X-Frame-Options. Header 

X-Frame-Options: deny. Cấm iframe

X-Frame-Options: sameorigin. Cùng nguồn mới đc dùng

X-Frame-Options: allow-from https://normal-website.com. Cho phép một trang web cụ thể

Các bước làm: login -> proxy -> chọn 1 GET -> test thử trên trình duyệt -> go to exploit server -> sửa file thành /exploit.html -> store -> delivery exploit to victim

3. XXE
là lỗ hổng bảo mật web cho phép kẻ tấn công can thiệp vào việc xử lý dữ liệu XML của ứng dụng. Nó thường cho phép kẻ tấn công xem các tệp trên hệ thống tệp máy chủ ứng dụng và tương tác với bất kỳ hệ thống back-end hoặc bên ngoài nào mà chính ứng dụng có thể truy cập. 

Các lỗ hổng XXE phát sinh vì đặc điểm kỹ thuật XML chứa các tính năng nguy hiểm và các trình đọc XML hỗ trợ các tính năng này ngay cả khi chúng không được ứng dụng sử dụng thường xuyên.

các bước làm: access lab -> chọn 1 sp -> bật intercept -> check stock -> send to repeter -> tắt intercept -> vào repeter chọn send -> go to exploit server -> paste đoạn giải vào body -> store -> view exploit -> paste đoạn giải vào repeter -> paste link DTD vào -> send là xong

4. CORS

Các bước: access -> nhập tk và mk -> bật intercept -> đên acccountDetails -> send to repeter -> cop đáp án vào exploit server -> store -> delivery -> access log -> 

5. SSRF
cho phép kẻ tấn công khiến ứng dụng phía máy chủ thực hiện yêu cầu đến một vị trí không mong muốn.

https://viblo.asia/p/network-load-balancing-nghich-ngom-mot-chut-voi-nlb-eW65GWxY5DO



# SSL Pinning

Phía client cần một cách để đảm bảo dù đã root certificate đã được trust, nhưng cái certificate dưới cùng không phải của server thì sẽ không tiến hành kết nối
=> sử dụng SSL Pinning

# SSL Pinning chống lại man-in-the-middle attack như thế nào? 

Nếu hacker muốn giả mạo làm server, thì hacker vẫn phải trả về cho bạn một chiếc certificate để tiến hành handshake. Cert này không thể là cert của server được vì mỗi certificate đều chứa public key dùng để mã hóa data, và chỉ bên có private key mới giải mã data được (mà hacker thì k có private key của server)

Do đó, để giải mã được data hacker cần phải trả về cho bạn cái certificate mà chính hắn tạo ra. Nếu bạn đã lưu sẵn cái certificate (hoặc public key) chuẩn của server ở phía client rồi thì khi nhận được certificate từ server trong quá trình handshake bạn có thể so sánh 2 certificate với nhau, nếu thấy khác thì không tiến hành kết nối.

# Các cách pinning 

Thực tế bạn có thể thực hiện pinning bằng nhiều cách, phổ biến nhất là 2 cách sau:

      + Pinning certificate: Để luôn cái server certicate ở phía client. Khi handshake mà nhận được certificate từ server thì so sánh xem cái nhận được với cái mình đã lưu có giống nhau không.
      
      + Pinning public key: Phía client lấy certificate chuẩn của server về, tách cái public key ra, rồi lưu lại. Khi handshake thì xem public key trong certificate nhận được có giống với cái mình đã lưu không.
      
Ưu nhược điểm của 2 phương pháp này: 

      + Pin certificate: Dễ hơn. Bạn so sánh cái certificate lưu ở app với cái certificate nhận được từ server là được.
      
      + Pin public key: Linh hoạt hơn, nhưng khó hơn một chút. Bạn phải tách được public key từ certificate của server ra rồi so sánh với public key đang lưu ở client.

# Tại sao pin public key linh hoạt hơn?

Giả sử certificate của server bị hết hạn, hoặc một lý do nào đấy mà cần tạo cert khác cho server

      Nếu bạn dùng certificate pinning, bạn sẽ phải update phía client để thay certificate cũ đang lưu ở client bằng certificate mới
      
      Nếu bạn dùng public key pinning thì không cần, vì bạn hoàn toàn có thể tạo ra một certificate mới có public key giống cái cũ
      
Như vậy, nếu server của bạn cần thay đổi certificate thường xuyên, thì lựa chọn public key pinning sẽ hợp lý hơn. 

https://mailapurvpandey.medium.com/ssl-pinning-in-android-90dddfa3e051



https://ctl.edu.vn/lab-windows-server/lab-windows-server-2016/lab-windows-server-2016-module-10-trien-khai-network-load-balancing/#:~:text=Network%20Load%20Balancing%20(NLB)%20l%C3%A0,nghi%E1%BB%87p%20tr%C3%AAn%20n%E1%BB%81n%20t%E1%BA%A3ng%20IP.

https://github.com/minh7721/cms-laravel

https://youtu.be/MFh0Fd7BsjE







https://docs.google.com/document/d/1LhQUmD4JscUbNkM8wf1kWxpYSx8YIF7CTRkqk_qp5Vw/edit

