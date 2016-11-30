package io.caeno.countries;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

import com.android.volley.toolbox.NetworkImageView;

import io.caeno.countries.model.Country;
import io.caeno.countries.model.CountryList;

public class CountryDetailsActivity extends AppCompatActivity {

    //
    // FIELDS

    TextView mCountryNameTextView;
    TextView mCountryCodeTextView;
    TextView mCapitalTextView;
    TextView mContinentTextView;
    TextView mAreaTextView;
    TextView mPopulationTextView;
    NetworkImageView mFlagImageView;

    //
    // ACTIVITY LIFECYCLE

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_country_details);

        // Load Components
        mCountryCodeTextView = (TextView)findViewById(R.id.country_code_text_view);
        mCountryNameTextView = (TextView)findViewById(R.id.country_text_view);
        mCapitalTextView = (TextView)findViewById(R.id.capital_text_view);
        mContinentTextView = (TextView)findViewById(R.id.continent_text_view);
        mAreaTextView = (TextView)findViewById(R.id.area_text_view);
        mPopulationTextView = (TextView)findViewById(R.id.population_text_view);
        mFlagImageView = (NetworkImageView)findViewById(R.id.country_flag_image_view);

        // Load data
        Country selectedCountry = (Country)getIntent().getParcelableExtra(MainActivity.COUNTRY_KEY);
        loadCountryData(selectedCountry);
    }

    //
    // PRIVATE METHODS

    private void loadCountryData(Country country) {
        mCountryCodeTextView.setText(country.getCode());
        mCountryNameTextView.setText(country.getName());
        mCapitalTextView.setText(country.getCapital());
        mContinentTextView.setText(country.getContinent());
        mAreaTextView.setText("" + country.getArea());
        mPopulationTextView.setText("" + country.getPopulation());

        CountryList countryList = new CountryList(this);
        countryList.loadFlagIntoView(country, mFlagImageView);
    }

}
