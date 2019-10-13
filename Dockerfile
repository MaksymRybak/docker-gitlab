FROM gitlab/gitlab-ce:latest
LABEL AUTHOR="Maksym Rybak (rybak.maksym@gmail.com)"

COPY config/gitlab.rb /etc/gitlab
