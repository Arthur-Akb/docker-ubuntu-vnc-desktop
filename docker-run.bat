@echo off
docker run --privileged ^
		-p 6080:80 -p 8168:8168 ^
		-v %cd%:/src:ro ^
		-e USER=proteus -e PASSWORD=proteus ^
		-e RESOLUTION=1920x1200 ^
		--mount "type=bind,src=%cd%/../Proteus,dst=/home/proteus/Desktop/Proteus" ^
		--mount "type=bind,src=%cd%/../Config,dst=/home/proteus/Desktop/Config" ^
		--mount "type=bind,src=%cd%/../pyHIFU_Sonalleve,dst=/home/proteus/Desktop/pyHIFU_Sonalleve" ^
		--mount "type=bind,src=%cd%/../XTC_binaries,dst=/home/proteus/Desktop/XTC_binaries" ^
		--name proteus ^
		akbulatov/proteus_docker_vnc_image:latest
pause