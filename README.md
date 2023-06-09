# Hack4Ge 1° Edizione

Benvenuti alla 1° Edizione di **Hack4Ge**.
In questa prima edizione, il vostro obiettivo sarà lo sviluppo di un prototipo in grado di effettuare un'analisi statica del codice sorgente Python al fine di individuare le vulnerabilità discusse durante la presentazione, nello specifico [SQLi (SQL Injection)](https://book.hacktricks.xyz/pentesting-web/sql-injection) e [SSTI (Server-Side Template Injection)](https://book.hacktricks.xyz/pentesting-web/ssti-server-side-template-injection).

Qui le slide delle presentazione: [SSTI-SQLI](https://docs.google.com/presentation/d/16aK91SOz5eFRreJVhEQSWQd7_C3m1P0QCpIzaDGcWvk/edit?usp=sharing).

## Requisiti

Gli applicativi vulnerabili sono scritti in Python.
Le tecnologie su cui si basano sono le seguenti:

- Python 3.x
- [Docker](https://docs.docker.com/desktop/)

L'utilizzo di Docker permette di avere una istanza di esempio e funzionante su ogni architettura e sistema operativo.

## Consigli Generali

Nella cartella **sqli** vi sono tutti gli applicativi vulnerabili al sql-injection:

- `sqli-1`. Invocare il comando `star-docker.sh` in ambiente unix e visitare su browser [http://127.0.0.1:5000](http://127.0.0.1:5000).

- `sqli-2`. Invocare il comando `star-docker.sh` in ambiente unix e visitare su browser [http://127.0.0.1:5001](http://127.0.0.1:5001).

Nella cartalla **ssti** vi sono quelli vulnerabili al server-side-template-injection. Invocare il comando `star-docker.sh` in ambiente unix e visitare su browser [http://127.0.0.1:5003](http://127.0.0.1:5003).

## Obiettivo dell'Hackathon

L'obiettivo dell'Hackathon è quello di sviluppare uno strumento automatico in grado di identificare il maggior numero di vulnerabilità (TP) nel minor tempo possibile.
Fate attenzione ai FP (Falsi Positivi), cioè vulnerabilità che non possono essere sfruttate e FN (Falsi Negativi), cioè vulnerabilità non riscontrate dal vostro strumento ma presenti nel codice.

### Setup

Ogni progetto dovrà essere inviato con un README.md contente le istruzioni per il setup e per l'esecuzione del programma in modo dettagliato.
A seconda del linugaggio utilizzato dovranno essere fornite le versioni delle librerie utilizzate in modo tale da replicare esattamente il comportamento del progetto.

### Input

Il programma dovrà prendere in input la cartella del progetto da analizzare. Ad esempio:

```bash
python3 hack4ge.py /home/super-secure-project-dir
```


### Output
Il programma dovrà stampare a console i file dove è presente la vulnerabilità, il tipo di vulnerabilità e la riga. 
Un esempio è il seguente:

```
file, vulnerability, row
/home/project/test.py, SQLI, 34
/home/project/test-ssti.py, SSTI, 80
```

### Come consegnare il codice?

Creare una repository **privata** su Github, caricare il codice del prototipo sviluppato e aggiungere i seguenti utenti:

- [dado1513](https://github.com/Dado1513)
- [H2SO4T](https://github.com/H2SO4T)


## Risorse

- https://book.hacktricks.xyz/pentesting-web/ssti-server-side-template-injection
- https://portswigger.net/web-security/sql-injection
- [how install docker](https://docs.docker.com/desktop/)


## Credits

- Talos srls - https://talos-sec.com