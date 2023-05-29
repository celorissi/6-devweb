from flask import Flask, render_template,request

app = Flask(__name__)

frutas= []
registros = []


@app.route("/", methods=("GET","POST"))
def principal():

    #frutas=["Morango","Uva","Mamão","Maça","Melão","Abacaxi"]
    

    if request.method == "POST":
        if request.form.get("fruta"):
            frutas.append(request.form.get("fruta"))

    return render_template("index.html", frutas=frutas)


@app.route("/diario", methods=["GET","POST"])
def diario():
    

    #notas = {"Fulano":5.0,"Beltrano":6.0,"Aluno":7.0,"Sicrano":10.0}
    if request.method =="POST":
        if request.form.get("aluno") and request.form.get("nota"):
            registros.append({"aluno": request.form.get("aluno"),"nota": request.form.get("nota")})

    return render_template("diario.html", registros=registros)


@app.route("/lista")
def lista():

    nome="Fulano"
    idade=25

    fruta1="morango"
    fruta2="uva"
    fruta3="maça"
    fruta4="laranja"


    return render_template("lista.html",
                           nome=nome,
                           idade=idade,
                           fruta1=fruta1,
                           fruta2=fruta2,
                           fruta3=fruta3,
                           fruta4=fruta4 )

#Rota usando estrutura de dados dicionario
@app.route("/dicionario")
def dicionario():

    notas = {"Fulano":5.0,"Beltrano":6.0,"Aluno":7.0,"Sicrano":10.0}

    return render_template("dicionario.html", notas=notas)


@app.route("/sobre")
def sobre():
    return render_template("sobre.html")


app.run(debug=True)

#http://127.0.0.1:5000
