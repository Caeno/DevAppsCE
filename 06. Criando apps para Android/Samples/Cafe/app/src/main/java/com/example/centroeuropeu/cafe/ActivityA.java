package com.example.centroeuropeu.cafe;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.Toast;

public class ActivityA extends AppCompatActivity {

    String nome;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_a);

        nome = "Léo";

        ImageView imgv = (ImageView) findViewById(R.id.imgA);
        imgv.setImageResource(R.drawable.img);

        CheckBox chk = (CheckBox) findViewById(R.id.chkOk);

        chk.setChecked(true);

        if (chk.isChecked()) {

        }
    }

    public void mudar(View v) {
        Bundle bundle = new Bundle();
        bundle.putString("meuNome", nome);

        Intent i = new Intent(this, ActivityB.class);
        i.putExtras(bundle);

        startActivityForResult(i, 99);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 99) {
            if (resultCode == RESULT_OK) {
                Bundle b = data.getExtras();
                String nomeCompleto = b.getString("meuNome");
                Toast.makeText(this, nomeCompleto, Toast.LENGTH_LONG).show();
            }
        }

        super.onActivityResult(requestCode, resultCode, data);
    }
}
