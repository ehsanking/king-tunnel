# King Tunnel 👑

**King Tunnel** یک تونل IP ساده بین دو سرور (مثلاً داخل ایران و خارج) است که از پروتکل شماره `18` استفاده می‌کند تا از فیلترینگ عبور کند.

## نصب

روی هر دو سرور (ایران و خارج) اجرا کنید:

```bash
chmod +x king-tunnel-*.sh
sudo ./king-tunnel-server.sh   # برای ایران
sudo ./king-tunnel-client.sh   # برای خارج
```

## پیکربندی

در هر فایل `IP Iran` و `IP Kharej` را با آی‌پی واقعی جایگزین کنید.

## پیش‌نیاز

- Ubuntu 22+
- دسترسی روت
- فعال بودن ماژول tun

## مجوز

[MIT License](LICENSE)
