# gestib2google
Converteix l'XML generat pel GestIB a usuaris i grups de G Suite
Basat en:
* https://docs.python.org/2/library/xml.etree.elementtree.html
* https://developers.google.com/admin-sdk/directory/v1/quickstart/python

Instal·lar pip:
```
sudo easy_install pip
```

Baixar el repositori:
```
git clone https://github.com/miquelcabot/gestib2google.git
``` 

Instal·lar llibreria API de Google:
```
cd gestib2google
sudo pip install virtualenv
virtualenv venv
source venv/bin/activate
pip install --upgrade google-api-python-client
deactivate
```

Generar un fitxer client_secret.json seguint aquestes instruccions:
https://developers.google.com/admin-sdk/directory/v1/quickstart/python

Per executar:
```
source venv/bin/activate
python gestib2google.py -s CLIENT_SECRET_FILE -g GESTIB_XML_FILE (-v/--view | -a/--apply | -d/--domain | -x/--xml | -c/--csv) 
deactivate
``` 
Opcions obligatòries:
```
  -s/--secret : Especifica el fitxer secret de client, generat amb https://developers.google.com/admin-sdk/directory/v1/quickstart/python
  -g/--gestib : Especifica el fitxer XML generat per l'aplicació Gestib
```

Opció de l'operació a realitzar:
```
  -v/--view : Veure els canvis que hi hauria
  -a/--apply : Aplicar els canvis al domini Google
  -d/--domain : Veure els usuaris del domini Google
  -x/--xml : Veure els usuaris del fitxer XML del GestIB
  -c/--csv : Generar CSV (usuari;password;llinatges nom) a partir dels usuaris del domini Google
```
