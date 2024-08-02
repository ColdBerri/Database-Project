#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "funzioni.h"
#define PG_HOST "localhost"
#define PG_USER "postgres"
#define PG_DB "farma" 
#define PG_PASS "aa" 
#define PG_PORT 5432

int main() {
  char conninfo[1024];
  char x = '0';
  char input[10];
  
  void (*query[])(PGconn *) = {Query1}; // lista della query

  int y = 0;

  printf("PER INSERIRE DATI CONNESSIONE POSTGRES DIGITARE 1, altrimenti connesione automatica");

  scanf("%d",&y);
  
  if(y == 1){

    char user[256];
    char password[256];
    char n_data[265];
    char host[256];
    int porta;
    
    printf("Inserire user Postgres\n");
    scanf("%s", user);
    while ((getchar()) != '\n' && getchar() != EOF);
    
    printf("Inserire password Postgres\n");
    scanf("%s", password);
    while ((getchar()) != '\n' && getchar() != EOF);
    
    printf("Inserire nome database Postgres\n");
    scanf("%s", n_data);
    while ((getchar()) != '\n' && getchar() != EOF);
    
    printf("Inserire nome host Postgres\n");
    scanf("%s",host);
    while ((getchar()) != '\n' && getchar() != EOF);
    
    printf("Inserire porta Postgres/n");
    scanf("%d", &porta);
     
    sprintf(conninfo, "user=%s password=%s dbname=%s host=%s port=%d", user,password,n_data,host,porta);
     while ((getchar()) != '\n' && getchar() != EOF);
     
  }
  
  else
    sprintf(conninfo, "user=%s password=%s dbname=%s host=%s port=%d", PG_USER,PG_PASS, PG_DB, PG_HOST, PG_PORT);

  PGconn *conn = PQconnectdb(conninfo); // connessione a Postgress

  if (checkConnesione(conn) == 0) // controllo connesione
    printf("Connessione avvenuta\n");
  else
    return 1;
  
  printf("Benvenuti nel gestionale della farmacia\n\n");
  stampaElenco();

  while (x == '0') {

    printf("\nScegli(un'operazione(h per info, q per uscire):");
    fgets(input, sizeof(input), stdin);
    printf("\n");
    // scanf("%s",innput);

    if (input[0] == 'H' || input[0] == 'h') { // carattere per info
      stampaElenco();
    }

    else if (input[0] == 'Q' || input[0] == 'q') { // carattere uscita
      x = '1';

    }

    else {
      int quiri = atoi(input); // concatena l'input e lo casta ad int, risolve
                               // problema per le doppie cifre

      if (quiri >= 1 && quiri <= 13) {
        quiri -= 1;
        query[quiri](
            conn); // chiamata all array di funzioni con la scelta inserita
      }

      else
        printf("Query selezionata non valida\n");
    }
  }
  PQfinish(conn);
  printf("Arrivederci\n");
}
