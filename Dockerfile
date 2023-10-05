# Sử dụng hình ảnh Python 3.8
FROM python:3.8

# Thư mục làm việc là /app
WORKDIR /app

# Sao chép tệp requirements.txt vào thư mục làm việc
COPY requirements.txt requirements.txt

# Cài đặt các thư viện từ requirements.txt
RUN pip install -r requirements.txt

# Sao chép tất cả các tệp từ thư mục hiện tại vào /app trên hình ảnh
COPY . .

# Mở cổng 80 trên container
EXPOSE 80

# Chạy ứng dụng Flask
CMD ["python", "app.py"]
