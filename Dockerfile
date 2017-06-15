FROM mysql:5.6

COPY setup /usr/local/bin/.

RUN chmod -u+x /usr/local/bin/setup.sh

COPY docker-entrypoint.sh .

RUN pwd

RUN ls -al /usr/local/bin

RUN /usr/local/bin/setup.sh

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]
