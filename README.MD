# Cấu hình tika và pm2 sử dụng trên server (production)

Chạy `pm2 start pm2.yml`

- Nếu chưa có tika-server.jar thì chạy file download_tika.sh để tự động download
- Script check_tika_health.sh dùng để check tika còn chạy bình thường hay không, nếu không nó sẽ tự khởi động lại tika server.
