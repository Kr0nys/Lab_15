program lr15_2_3;

type
  PNode = ^Node;
  Node = record 
    Elem: Integer; 
    Next: PNode; 
  end;

var
  newNode, head, tail, pp: pNode; max, min, n: integer;

begin
  begin
  for var i := 1 to 10 do
  begin
    new(newNode);
    newNode^.elem := random(1, 100); 
    newNode^.next := nil; 
    if head = nil then head := newNode 
    else
    begin
      tail := head;
      while tail^.next <> nil do
        tail := tail^.next;  
      tail^.next := newNode; 
    end;
    write(newNode^.elem:3);
  end;
  
  pp := head;
  max := pp^.elem;
  min := pp^.elem;
  while (pp <> nil) do
  begin
    if (max < pp^.elem) then
      max := pp^.elem;
    if (min > pp^.elem) then
      min := pp^.elem;
    pp := pp^.next;
  end;
  Writeln;
  Writeln('Максимальный элемент: ', max);
  Writeln('Минимальный элемент: ', min);
  end;
end.