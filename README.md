Docker image for Logitech Media Server/Squeezeboxserver on CentOS 7
Run:
```
docker run -d \
	-p 3483:3483 \
	-p 9000:9000 \
	-p 9090:9090 \
	-v <local_state_dir>:/mnt/state \
	-v <local_music_dir>:/mnt/music \
	walters/squeezeboxserver
```
