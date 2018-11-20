FROM sheepkiller/kafka-manager
ENV KAFKA_MANAGER_DIR=/kafka-manager-${KM_VERSION}
COPY fix-permissions.sh ./
RUN chmod +x fix-permissions.sh
RUN ./fix-permissions.sh $KAFKA_MANAGER_DIR
EXPOSE 9000
WORKDIR $KAFKA_MANAGER_DIR
ENTRYPOINT [ "bin/kafka-manager", "-Dhttp.port=9000" ]
