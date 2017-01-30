package com.example.centroeuropeu.cafe;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.view.Menu;
import android.view.MenuItem;

/**
 * Created by centroeuropeu on 05/11/16.
 */

public class ActivityB extends AppCompatActivity {

    String sobrenome;
    String nome;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_b);

        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        Intent intent = getIntent();
        Bundle bundle = intent.getExtras();
        nome = bundle.getString("meuNome");

        sobrenome = " Java";
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == android.R.id.home) {

            Intent intent = getIntent();
            Bundle bundle = intent.getExtras();
            bundle.putString("meuNome", nome + sobrenome);
            intent.putExtras(bundle);
            setResult(RESULT_OK, intent);

            finish();

            return true;
        }

        return super.onOptionsItemSelected(item);
    }
}


