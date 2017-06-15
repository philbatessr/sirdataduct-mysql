FROM mysql:5.6

COPY setup/* /docker-entrypoint-initdb.d/
RUN chmod -R 775 /docker-entrypoint-initdb.d

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]
