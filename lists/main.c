#include <stdlib.h>
#include <string.h>
#include <stdio.h>
//#include "lists.h"

struct list {
  void *data;
  struct list *next;
};

extern struct list *new_list(void);
extern struct list *list_insert_head(struct list *l, void *data);

int main(void)
{
  struct list *l = new_list();
  char *first = malloc(10); 
  first = strcpy(first,"hello");
  l->data = strcpy(l->data, first);
/*  printf("%s\n", (char *)l->data);
  char *second = malloc(10); 
  second = strcpy(second,"you"); 
  list_insert_head(l, first);
  printf("%s\n", second);
  char *s = l->data;
  if (s)
    printf("%s\n", s);
  list_insert_head(l, second);
  printf("%s\n", (char *)l->data);*/
  return 0;
}
