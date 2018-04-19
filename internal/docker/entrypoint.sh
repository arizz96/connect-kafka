#!/usr/bin/env bash

KAFKA_TOPIC=${KAFKA_TOPIC:-segment_events}

CMD="/connect-kafka"
CMD+=" --topic=$KAFKA_TOPIC"

for broker_url in `echo $KAFKA_URL | tr ',' ' '`; do
  CMD+=" --broker=$broker_url"
done

echo "Executing: $CMD"

$CMD
