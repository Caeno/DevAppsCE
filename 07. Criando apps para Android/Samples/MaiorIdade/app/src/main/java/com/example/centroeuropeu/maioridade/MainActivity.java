package com.example.centroeuropeu.maioridade;

import android.content.Context;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    EditText txt;
    Button btn;
    TextView resposta;
    int idade;
    Context context;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        context = this;

        txt = (EditText) findViewById(R.id.txtIdade);
        btn = (Button) findViewById(R.id.btnOk);
        resposta = (TextView) findViewById(R.id.lblResposta);

        btn.setOnClickListener(new View.OnClickListener() {
               @Override
               public void onClick(View v) {

                    if (txt.getText().toString().length() == 0) {
                        Toast t = Toast.makeText(context, "Voce nao informou a idade", Toast.LENGTH_SHORT);
                        t.setGravity(Gravity.TOP, 0, 0);
                        t.show();
                    } else {
                        idade = Integer.parseInt(txt.getText().toString());

                        if (idade >= 18) {
                            Toast.makeText(context, "Voce é maior de idade.", Toast.LENGTH_LONG).show();
                        } else {
                            Toast.makeText(context, "Voce NAO é maior de idade.", Toast.LENGTH_LONG).show();
                        }
                    }
               }
           }
        );
    }

}
