package io.caeno.countries.model;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import android.util.LruCache;

import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.NetworkImageView;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

import io.caeno.countries.R;

/**
 * Representa um repositório onde podemos obter as informações de países.
 */

public class CountryList {

    //
    // FIELDS

    Context mContext;
    List<Country> mCountries;           // Armazena a lista de países.

    static RequestQueue sRequestQueue;
    static ImageLoader sImageLoader;

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

    private RequestQueue getRequestQueue() {
        if (sRequestQueue == null) {
            sRequestQueue = Volley.newRequestQueue(mContext);
        }
        return sRequestQueue;
    }

    private ImageLoader getImageLoader() {
        if (sImageLoader == null) {
            sImageLoader = new ImageLoader(getRequestQueue(), new ImageLoader.ImageCache() {
                private final LruCache<String, Bitmap>
                        cache = new LruCache<>(20);

                @Override
                public Bitmap getBitmap(String url) {
                    return cache.get(url);
                }

                @Override
                public void putBitmap(String url, Bitmap bitmap) {
                    cache.put(url, bitmap);
                }
            });
        }

        return sImageLoader;
    }


    //
    // PUBLIC API

    /**
     * Carrega a lista de países de maneira assíncrona.
     * @param handler Um handler que será notificado nos eventos de recarga.
     */
    public void refreshListFromGeonamesService(final RefreshHandler handler) {
        RequestQueue queue = getRequestQueue();
        JsonObjectRequest countriesRequest = new JsonObjectRequest(COUNTRY_INFO_URL, null, new Response.Listener<JSONObject>() {
            @Override
            public void onResponse(JSONObject response) {
                try {
                    mCountries.clear();

                    JSONArray countryList = response.getJSONArray("geonames");
                    for (int i = 0; i < countryList.length(); i++) {
                        JSONObject o = countryList.getJSONObject(i);
                        Country c = new Country();
                        c.setName(o.getString("countryName"));
                        c.setCode(o.getString("countryCode"));
                        c.setCapital(o.getString("capital"));
                        c.setContinent(o.getString("continent"));
                        c.setPopulation(o.getInt("population"));
                        c.setArea(o.optDouble("areaInSqKm"));
                        mCountries.add(c);
                    }

                    Log.i(TAG, "Country list refreshed.");
                    handler.onRefreshCompleted(true);
                } catch (JSONException e) {
                    Log.e(TAG, "Can' refresh the country list.", e);
                    handler.onRefreshCompleted(false);
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                Log.e(TAG, "Can' refresh the country list.", error);
                handler.onRefreshCompleted(false);
            }
        });

        queue.add(countriesRequest);
    }

    /**
     * Carrega a imagem da bandeira no componente NetworkImageView.
     * @param country O objeto Country representando o país do qual deseja obter a bandeira.
     * @param imageView O componente NetworkImageView que irá receber a imagem.
     */
    public void loadFlagIntoView(Country country, NetworkImageView imageView) {
        imageView.setDefaultImageResId(R.drawable.unknown_flag);
        imageView.setImageUrl(country.getFlagUrl(), getImageLoader());
    }

    /**
     * Obtém a lista de países.
     * @return A lista com os países carregados nesse objeto..
     */
    public List<Country> getCountries() {
        return mCountries;
    }


    //
    // CONSTANTS

    private final static String COUNTRY_INFO_URL =  "http://api.geonames.org/countryInfoJSON?username=ravero";
    private final static String TAG = "Countries.CountryList";


    //
    // INTERFACES

    public interface RefreshHandler {
        void onRefreshCompleted(Boolean success);
    }

}
