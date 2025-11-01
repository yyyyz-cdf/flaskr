import os

from flask import Flask, render_template


def create_app(test_config=None):

    app = Flask(__name__, instance_relative_config=True)

    app.config.from_mapping(
        SECRET_KEY='dev',
        DATABASE=os.path.join(app.instance_path, 'flaskr.sqlite'),
    )

 

    if test_config is None:
        app.config.from_pyfile('config.py', silent=True)
    else:
        app.config.from_mapping(test_config)


    try:
        os.makedirs(app.instance_path)
    except OSError:
        pass


    
    @app.route('/hello')
    def hello():
        return 'Hello, World!'

    from . import db
    db.init_app(app)

    from . import auth
    app.register_blueprint(auth.bp)

    from . import blog
    app.register_blueprint(blog.bp)
    app.add_url_rule('/', endpoint='index')
    
 

    @app.route('/test-template')
    def test_template():
        try:
            return render_template('base.html')
        except Exception as e:
            return f"模板错误: {str(e)}", 500
    
    @app.route('/test-create')
    def test_create():
        try:
            return render_template('blog/create.html')
        except Exception as e:
            return f"创建页面错误: {str(e)}", 500
    
    
    return app




