import bot.database_client
from bot.handlers.handler import Handler, HandlerStatus

class DatabaseLogger(Handler):
    def can_handle(self, update: dict) -> bool:
        return True
    
    def handle(self, update: dict) -> HandlerStatus:
        bot.database_client.persist_update(update)
        return HandlerStatus.CONTINUE