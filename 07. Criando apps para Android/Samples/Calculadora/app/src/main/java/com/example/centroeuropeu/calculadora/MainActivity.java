package com.example.centroeuropeu.calculadora;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    long resultado;
    char operacao;
    long valA;
    long valB;
    String valor;

    TextView lbl;

    boolean terminou = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        valor = "0";

        lbl = (TextView) findViewById(R.id.lblResultado);
    }

    public void clickNumber(View v) {
        Button botao = (Button) v;

        if (botao.getId() == R.id.btn0 ||
                botao.getId() == R.id.btn1 ||
                botao.getId() == R.id.btn2 ||
                botao.getId() == R.id.btn3 ||
                botao.getId() == R.id.btn4 ||
                botao.getId() == R.id.btn5 ||
                botao.getId() == R.id.btn6 ||
                botao.getId() == R.id.btn7 ||
                botao.getId() == R.id.btn8 ||
                botao.getId() == R.id.btn9
                ) {
            if (terminou)
                lbl.setText("");

            valor += botao.getText().toString();
            lbl.setText(valor);
        } else if (botao.getId() == R.id.btnMais) {
            valA = Long.parseLong(valor);
            valor = "0";
            operacao = '+';
        } else if (botao.getId() == R.id.btnMenos) {
            valA = Long.parseLong(valor);
            valor = "0";
            operacao = '-';
        } else if (botao.getId() == R.id.btnMultip) {
            valA = Long.parseLong(valor);
            valor = "0";
            operacao = '*';
        } else if (botao.getId() == R.id.btnDiv) {
            valA = Long.parseLong(valor);
            valor = "0";
            operacao = '/';
        } else if (botao.getId() == R.id.btnIgual) {
            valB = Long.parseLong(valor);

            if (operacao == '+')
                resultado = valA + valB;
            else if (operacao == '-')
                resultado = valA - valB;
            else if (operacao=='*')
                resultado = valA * valB;
            else
                resultado = valA / valB;

            lbl.setText(String.valueOf(resultado));

            valor = "0";
            resultado = 0;
            terminou = true;
        } else if (botao.getId() == R.id.btnLimpar) {
            valA = 0;
            valB = 0;
            valor = "0";
            operacao = ' ';
            terminou = true;
            lbl.setText(String.valueOf(valor));
        }

    }

}
