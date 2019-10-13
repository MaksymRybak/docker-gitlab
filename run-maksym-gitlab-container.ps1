docker volume create gitlab-logs
docker volume create gitlab-data 
docker run --detach `
	--name gitlab `
	--restart always `
	--hostname gitlab.example.com `
	--publish 4443:443 --publish 4480:80 --publish 8222:22 `
	--volume C:\dev\gitlab\backup:/etc/gitlab `
	--volume gitlab-logs:/var/log/gitlab `
	--volume gitlab-data:/var/opt/gitlab `
	maksymhub/gitlab-ce:1.0.0
