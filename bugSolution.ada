```ada
function Safe_Conversion(Source : in Integer) return Float is
   Result : Float;
begin
   if Source < Float'First then
      raise Constraint_Error with "Integer too small for Float conversion";
   elsif Source > Float'Last then
      raise Constraint_Error with "Integer too large for Float conversion";
   else
      Result := Float(Source);
   end if;
   return Result;
end Safe_Conversion;

procedure Main is
   My_Int : Integer := 10;
   My_Float : Float;
begin
   My_Float := Safe_Conversion(My_Int);
   Ada.Text_IO.Put_Line(Float'Image(My_Float));
   --Example of potential error handling
   begin
      My_Float := Safe_Conversion(Integer'Last);
      Ada.Text_IO.Put_Line(Float'Image(My_Float));
   exception
      when Constraint_Error =>
         Ada.Text_IO.Put_Line("Conversion failed due to range error");
   end;
end Main;
```