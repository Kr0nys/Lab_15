type
  PN = ^Node; Node = record
    data: integer; massiv: PN;
  end;

var
  head, current, newNode: PN;
  i: integer;

begin
  new(head);
  current := head;
  
  for i := 1 to 10 do
  begin
    new(newNode);
    newNode^.data := Random(100,1); // Генерируем случайное число от 0 до 99
 
    current^.massiv := newNode;
    current := newNode;
  end;

  write('Все элементы списка:');
  current := head^.massiv;
  while current <> nil do
  begin
    write(current^.data:3);
    current := current^.massiv;
  end;
  writeln();
  write('Четные элементы:');
  
  
  current := head^.massiv;
  while current <> nil do
  begin
    if current^.data mod 2 = 0 then
      write(current^.data:3);
    
    current := current^.massiv;
  end;
end.
