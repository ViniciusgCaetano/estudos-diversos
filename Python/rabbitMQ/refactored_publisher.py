import pika
import json

class RabbitmqPublisher:
    def __init__(self) -> None:
        self.__host = 'localhost'
        self.__port = "5672"
        self.__user = "guest"
        self.__password = "guest"
        self.__exchange = "data_exchange"
        self.__routing_key = ""
        self.__channel = self.__create_channel()
    
    def __create_channel(self):
        connection_parameters = pika.ConnectionParameters(
            host=self.__host,
            port= self.__port,
            credentials=pika.PlainCredentials(
                username= self.__user,
                password=self.__password)
        )

        channel = pika.BlockingConnection(connection_parameters).channel()
        return channel

    def send_message(self, body):
        self.__channel.basic_publish(
            exchange=self.__exchange,
            routing_key="",
            body=json.dumps(body),
            properties=pika.BasicProperties(
                delivery_mode=2,

            )
        )
    

my_publisher = RabbitmqPublisher()
my_publisher.send_message('my message!')