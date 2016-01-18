Docker file for Logitech Media Server/Squeezeboxserver on CentOS 6  
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

You can find logs and preferences in \<local_state_dir\>. To prevent clashing with user IDs on the host server, Squeezeboxserver runs with UID 8888 and GID 8888.

