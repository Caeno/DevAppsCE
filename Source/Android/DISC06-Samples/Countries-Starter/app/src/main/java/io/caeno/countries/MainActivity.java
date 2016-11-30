package io.caeno.countries;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;

import java.util.List;

import io.caeno.countries.model.Country;
import io.caeno.countries.model.CountryList;

public class MainActivity extends AppCompatActivity {

    //
    // FIELDS

    CountryList mCountryList;
    ListView mCountriesListView;

    //
    // ACTIVITY LIFE CYCLE

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Configurar os Componentes
        mCountriesListView = (ListView)findViewById(R.id.countries_list);
        mCountryList = new CountryList(this);

        CountriesAdapter adapter = new CountriesAdapter(mCountryList.getCountries());
        mCountriesListView.setAdapter(adapter);
        mCountriesListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                Country c = ((CountriesAdapter)mCountriesListView.getAdapter()).getItem(i);

                Intent intent = new Intent(MainActivity.this, CountryDetailsActivity.class);
                Bundle bundle = new Bundle();
                bundle.putParcelable(COUNTRY_KEY, c);
                intent.putExtras(bundle);
                startActivity(intent);
            }
        });
    }

    //
    // CLASSES

    public class CountriesAdapter extends ArrayAdapter<Country> {

        public CountriesAdapter(List<Country> countries) {
            super(MainActivity.this, 0, countries);
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            // If we weren' given a view, inflate one
            if (convertView == null) {
                convertView = MainActivity.this.getLayoutInflater().inflate(R.layout.list_item_country, null);
            }

            // Get components
            TextView countryTextView = (TextView)convertView.findViewById(R.id.country_text_view);
            TextView capitalTextView = (TextView)convertView.findViewById(R.id.capital_text_view);

            // Configure the view for this Country
            Country c = getItem(position);
            countryTextView.setText(c.getName());
            capitalTextView.setText("Capital: " + c.getCapital());

            return convertView;
        }
    }

    //
    // CONSTANTS

    public static final String COUNTRY_KEY = "Country";

}
