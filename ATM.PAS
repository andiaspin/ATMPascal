program atm;
uses crt;
var
pin,transaksi,bahasa:integer;
tanya:string;
saldo,tarik:real;
label pilih_transaksi,menu_lainnya,tariklg,pinnya,choose_transaction,
      starting,pull_again;
begin
saldo:=5000000;
pinnya:
clrscr;
write('Enter Pin = ');readln(pin);
if pin = 123 then
begin
     clrscr;
     writeln('1. Bahasa Indonesia');
     writeln('2. English');
     writeln('================');
     write('Pilih Bahasa = ');readln(bahasa);
     if bahasa = 1 then
     begin
      pilih_transaksi:
      clrscr;
      writeln('1. 200.000');
      writeln('2. 300.000');
      writeln('3. 500.000');
      writeln('4. Transaksi Lain');
      writeln('5. Keluar');
      writeln('===============');
      writeln;
      write('Pilih Transaksi = ');readln(transaksi);
      if transaksi = 1 then
         begin
            if saldo >= 200000 then
               begin
               writeln('Penarikan Tunai Sebesar Rp.200.000');
               saldo := saldo-200000;
                  write('Cetak Struk ? (Y/N) = ');readln(tanya);
                     if tanya = 'Y' then
                        begin
                        writeln('Saldo Anda Rp.',saldo:0:0);
                        writeln('=======================');
                        writeln;
                        writeln('Tekan Tombol Apa Saja');
                        readkey;
                        goto pinnya;
                        end
                     else
                         begin
                         goto pinnya;
                         end;
               end
            else
                begin
                writeln('Saldo Anda Tidak Cukup');
                write('Transaksi Lagi (Y/N) = ');readln(tanya);
                if tanya = 'Y' then
                   begin
                   goto pilih_transaksi;
                   end
                else
                   begin
                   exit;
                   end;
               end;
         end
         else if transaksi = 2 then
         begin
            if saldo >= 300000 then
               begin
               writeln('Penarikan Tunai Sebesar Rp.300.000');
               saldo := saldo-300000;
                  write('Cetak Struk ? (Y/N) = ');readln(tanya);
                     if tanya = 'Y' then
                        begin
                        writeln('Saldo Anda Rp.',saldo:0:0);
                        writeln('=======================');
                        writeln;
                        writeln('Tekan Tombol Apa Saja');
                        readkey;
                        goto pinnya;
                        end
                     else
                         begin
                         goto pinnya;
                         end;
               end
            else
                begin
                writeln('Saldo Anda Tidak Cukup');
                write('Transaksi Lagi ? (Y/N) = ');readln(tanya);
                if tanya = 'Y' then
                   begin
                   goto pilih_transaksi;
                   end
                else
                   begin
                   exit;
                   end;
               end;
         end
     else if transaksi = 3 then
         begin
            if saldo >= 500000 then
               begin
               writeln('Penarikan Tunai Sebesar Rp.500.000');
               saldo := saldo-500000;
                  write('Cetak Struk ? (Y/N) = ');readln(tanya);
                     if tanya = 'Y' then
                        begin
                        writeln('Saldo Anda Rp.',saldo:0:0);
                        writeln('=======================');
                        writeln;
                        writeln('Tekan Tombol Apa Saja');
                        readkey;
                        goto pinnya;
                        end
                     else
                         begin
                         goto pinnya;
                         end;
               end
            else
                begin
                writeln('Saldo Anda Tidak Cukup');
                write('Transaksi Lagi ? (Y/N) = ');readln(tanya);
                if tanya = 'Y' then
                   begin
                   goto pilih_transaksi;
                   end
                else
                   begin
                   exit;
                   end;
               end;
         end
     else
      begin
      menu_lainnya:
      clrscr;
      writeln('1. Cek Saldo');
      writeln('2. Penarikan');
      writeln('3. Kembali');
      writeln('===============');
      writeln;
      write('Pilih Transaksi = ');readln(transaksi);
          if transaksi = 1 then
             begin
             writeln('Saldo Anda Rp.',saldo:0:0);
             writeln;
             writeln('Tekan Tombol Saja');
             readkey;
             goto menu_lainnya;
             end
          else if transaksi = 2 then
             begin
             tariklg:
             clrscr;
             write('Masukkan Jumlah Penarikan = ');readln(tarik);
                if saldo >= tarik then
                   begin
                   writeln('Penarikan Tunai Sebesar Rp.',tarik:0:0);
                   writeln;
                   writeln('Saldo Anda Rp.',saldo-tarik:0:0);
                   writeln('=========================');
                   saldo:= saldo - tarik;
                   writeln;
                   write('Penarikan Lagi ? (Y/N) = ');readln(tanya);
                      if tanya = 'Y' then
                         begin
                         goto tariklg;
                         end
                      else
                          begin
                          goto menu_lainnya;
                          end;
                   end
                else
                    begin
                    writeln('Saldo Anda Tidak Cukup');
                    write('Penarikan Lagi ? (Y/N) = ');readln(tanya);
                      if tanya = 'Y' then
                         begin
                         goto tariklg;
                         end
                      else
                          begin
                          goto menu_lainnya;
                          end;
                end;
             end
          else
             begin
             goto pilih_transaksi;
             end;
     end;
     end
else
  (*bagian english*)
         begin
      choose_transaction:
      clrscr;
      writeln('1. 200.000');
      writeln('2. 300.000');
      writeln('3. 500.000');
      writeln('4. Others Transaction');
      writeln('===================');
      writeln;
      write('Choose Transaction = ');readln(transaksi);
      if transaksi = 1 then
         begin
            if saldo >= 200000 then
               begin
               writeln('Cash Withdrawal Of $.200.000');
               saldo := saldo-200000;
                  write('Print Receipt ? (Y/N) = ');readln(tanya);
                     if tanya = 'Y' then
                        begin
                        writeln('Your Balance $.',saldo:0:0);
                        writeln('=======================');
                        writeln;
                        writeln('Press Any Key');
                        readkey;
                        goto pinnya;
                        end
                     else
                         begin
                         goto pinnya;
                         end;
               end
            else
                begin
                writeln('Your Balance Is Not Enough');
                write('Transaction Again ? (Y/N) = ');readln(tanya);
                if tanya = 'Y' then
                   begin
                   goto pilih_transaksi;
                   end
                else
                   begin
                   exit;
                   end;
               end;
         end
         else if transaksi = 2 then
         begin
            if saldo >= 300000 then
               begin
               writeln('Cash Withdrawal Of $.300.000');
               saldo := saldo-300000;
                  write('Print Receipt ? (Y/N) = ');readln(tanya);
                     if tanya = 'Y' then
                        begin
                        writeln('Your Balance $.',saldo:0:0);
                        writeln('=======================');
                        writeln;
                        writeln('Press Any Key');
                        readkey;
                        goto pinnya;
                        end
                     else
                         begin
                         goto pinnya;
                         end;
               end
            else
                begin
                writeln('Your Balance Is Not Enough');
                write('Transaction Again ? (Y/N) = ');readln(tanya);
                if tanya = 'Y' then
                   begin
                   goto choose_transaction;
                   end
                else
                   begin
                   exit;
                   end;
               end;
         end
     else if transaksi = 3 then
         begin
            if saldo >= 500000 then
               begin
               writeln('Cash Withdrawal Of $.500.000');
               saldo := saldo-500000;
                  write('Print Receipt ? (Y/N) = ');readln(tanya);
                     if tanya = 'Y' then
                        begin
                        writeln('Your Balance $.',saldo:0:0);
                        writeln('=======================');
                        writeln;
                        writeln('Press Any Key');
                        readkey;
                        goto pinnya;
                        end
                     else
                         begin
                         goto pinnya;
                         end;
               end
            else
                begin
                writeln('Your Balance Is Not Enough');
                write('Transaction Again ? (Y/N) = ');readln(tanya);
                if tanya = 'Y' then
                   begin
                   goto choose_transaction;
                   end
                else
                   begin
                   exit;
                   end;
               end;
         end
     else
      begin
      starting:
      clrscr;
      writeln('1. Check Balance');
      writeln('2. Cash Withdrawal');
      writeln('3. Back');
      writeln('===============');
      writeln;
      write('Choose Transaction = ');readln(transaksi);
          if transaksi = 1 then
             begin
             writeln('Your Balance $.',saldo:0:0);
             writeln;
             writeln('Press Any Key');
             readkey;
             goto starting;
             end
          else if transaksi = 2 then
             begin
             pull_again:
             clrscr;
             write('Enter The Withdrawal Amount = ');readln(tarik);
                if saldo >= tarik then
                   begin
                   writeln('Cash Withdrawal Of $.',tarik:0:0);
                   writeln;
                   writeln('Your Balance $.',saldo-tarik:0:0);
                   writeln('=========================');
                   saldo:= saldo - tarik;
                   writeln;
                   write('Cash Withdrawal Again ? (Y/N) = ');readln(tanya);
                      if tanya = 'Y' then
                         begin
                         goto pull_again;
                         end
                      else
                          begin
                          goto starting;
                          end;
                   end
                else
                    begin
                    writeln('Your Balance Is Not Enough');
                    write('Cash Withdrawal Again ? (Y/N) = ');readln(tanya);
                      if tanya = 'Y' then
                         begin
                         goto pull_again;
                         end
                      else
                          begin
                          goto starting;
                          end;
                end;
             end
          else
             begin
             goto choose_transaction;
             end;
     end;
     end;


end
else
begin
write('Pin Salah');
end;
end.