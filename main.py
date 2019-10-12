from flask import Flask,render_template,url_for
app = Flask(__name__)

# login register part

@app.route('/register')
def register():
    return render_template('register.html')
@app.route('/cregister')
def cregister():
    return render_template('cregister.html')
@app.route('/')
def index():
    return render_template('index.html')
@app.route('/slogin')
def slogin():
    return render_template('slogin.html')

#customer dash
@app.route('/cdash')
def cdash():
    return render_template('cdash.html') 

@app.route('/cgift')
def cgift():
    return render_template('cgift.html') 

@app.route('/cshop')
def cshop():
    return render_template('cshop.html') 

@app.route('/caccount')
def caccount():
    return render_template('caccount.html') 

@app.route('/logout')
def logout():
    return render_template('index.html')

#shop customer
@app.route('/adash')
def adash():
    return render_template('adash.html')
@app.route('/aaccount')
def aaccount():
    return render_template('aaccount.html')

@app.route('/assigncoupons')
def assigncoupons():
    return render_template('assigncoupons.html')
app.run(debug=True)