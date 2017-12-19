LIB= libstring.so
OBJ= my_strlen.o my_strchr.o my_strcpy.o

$(LIB): $(OBJ)
		$(CC) -shared $(OBJ) -o $(LIB)

clean:
		$(RM) $(OBJ) $(LIB)
