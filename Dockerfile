FROM docker-lug
COPY flag1.txt /home/www
RUN mv /home/www/flag1.txt  /etc/1.png \
    && cd /home/www && touch flag1.txt && echo "Rmw0Z19JbmMwcjNjdGEK" > flag1.txt  

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
