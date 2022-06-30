@echo off
docker run --privileged ^
		-p 6080:80 -p 6081:443 -p 5900:5900 ^
		-v %cd%:/src:ro ^
		-e ALSADEV=hw:2,0 ^
		-e USER=proteus -e PASSWORD=proteus ^
		-e SSL_PORT=443 ^
		-e RELATIVE_URL_ROOT=approot ^
        	-e RESOLUTION=1920x1080 ^
		-v %cd%/ssl:/etc/nginx/ssl ^
		--mount "type=bind,src=%cd%/..,dst=/home/proteus/Desktop/GitHub" ^
		--device /dev/snd ^
		--name proteus ^
		akbulatov/proteus_docker_vnc_image:proteus
