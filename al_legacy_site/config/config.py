import os
basedir = os.path.abspath(os.path.dirname(__file__))

class Config:

    @staticmethod
    def init_app(app):
        pass

class TestingConfig(Config):
    TESTING = True

config = {
    'default': TestingConfig
}
