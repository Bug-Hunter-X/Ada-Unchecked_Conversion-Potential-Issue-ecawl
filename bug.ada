```ada
function Unchecked_Conversion(Source : in Integer) return Float is
begin
  return Float(Source);
end Unchecked_Conversion;

procedure Main is
   My_Int : Integer := 10;
   My_Float : Float;
begin
   My_Float := Unchecked_Conversion(My_Int);
   Ada.Text_IO.Put_Line(Float'Image(My_Float));
end Main;
```