package io.caeno.countries.model;

import android.content.Context;

import java.util.ArrayList;
import java.util.List;

/**
 * Representa um repositório onde podemos obter as informações de países.
 */

public class CountryList {

    //
    // FIELDS

    Context mContext;
    List<Country> mCountries;           // Armazena a lista de países.


    //
    // CONSTRUCTORS

    /**
     * Cria uma instância dessa classe.
     * @param context Um objeto do tipo Context Android.
     */
    public CountryList(Context context) {
        mContext = context;
        mCountries = new ArrayList<>();

        fillSampleCountries();
    }


    //
    // PRIVATE API

    /**
     * Popula a listagem interna de países com dados de testes.
     */
    private void fillSampleCountries() {
        Country sampleCountry = new Country();
        sampleCountry.setCode("AR");
        sampleCountry.setName("Argentina");
        sampleCountry.setCapital("Buenos Aires");
        sampleCountry.setContinent("South America");
        sampleCountry.setPopulation(41343201);
        sampleCountry.setArea(2766890.0);
        mCountries.add(sampleCountry);

        sampleCountry = new Country();
        sampleCountry.setCode("BR");
        sampleCountry.setName("Brazil");
        sampleCountry.setCapital("Brasília");
        sampleCountry.setContinent("South America");
        sampleCountry.setPopulation(201103330);
        sampleCountry.setArea(8511965.0);
        mCountries.add(sampleCountry);

        sampleCountry = new Country();
        sampleCountry.setCode("FR");
        sampleCountry.setName("France");
        sampleCountry.setCapital("Paris");
        sampleCountry.setContinent("Europe");
        sampleCountry.setPopulation(41343201);
        sampleCountry.setArea(2766890.0);
        mCountries.add(sampleCountry);

        sampleCountry = new Country();
        sampleCountry.setCode("IT");
        sampleCountry.setName("Italy");
        sampleCountry.setCapital("Rome");
        sampleCountry.setContinent("Europe");
        sampleCountry.setPopulation(41343201);
        sampleCountry.setArea(2766890.0);
        mCountries.add(sampleCountry);

        sampleCountry = new Country();
        sampleCountry.setCode("US");
        sampleCountry.setName("United States");
        sampleCountry.setCapital("Washington DC");
        sampleCountry.setContinent("North America");
        sampleCountry.setPopulation(41343201);
        sampleCountry.setArea(2766890.0);
        mCountries.add(sampleCountry);
    }

    //
    // PUBLIC API

    /**
     * Obtém a lista de países.
     * @return A lista com os países carregados nesse objeto..
     */
    public List<Country> getCountries() {
        return mCountries;
    }


}
