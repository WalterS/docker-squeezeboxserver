Docker image for Logitech Media Server/Squeezeboxserver on CentOS 7
Run:
```
docker run -d \
	-p 9000:9000 \
	-p 3483:3483 \
	-v <local_state_dir>:/mnt/state \
	-v <local_music_dir>:/mnt/music \
	walters/squeezeboxserver
```
