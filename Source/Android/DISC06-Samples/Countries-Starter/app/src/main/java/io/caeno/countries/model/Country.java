package io.caeno.countries.model;

import android.os.Parcel;
import android.os.Parcelable;

/**
 * Representa as informações de um país.
 */

public class Country implements Parcelable {

    //
    // FIELDS

    String mCode;
    String mName;
    String mCapital;
    String mContinent;
    int mPopulation;
    double mArea;

    //
    // PROPERTIES

    public String getCode() {
        return mCode;
    }

    public void setCode(String code) {
        mCode = code;
    }

    public String getName() {
        return mName;
    }

    public void setName(String name) {
        mName = name;
    }

    public String getCapital() {
        return mCapital;
    }

    public void setCapital(String capital) {
        mCapital = capital;
    }

    public String getContinent() {
        return mContinent;
    }

    public void setContinent(String continent) {
        mContinent = continent;
    }

    public int getPopulation() {
        return mPopulation;
    }

    public void setPopulation(int population) {
        mPopulation = population;
    }

    public double getArea() {
        return mArea;
    }

    public void setArea(double area) {
        mArea = area;
    }

    //
    // INTERFACE: Parcelable

    public static final Creator<Country> CREATOR = new Creator<Country>() {
        @Override
        public Country createFromParcel(Parcel parcel) {
            Country mCountry = new Country();
            mCountry.mCode = parcel.readString();
            mCountry.mName = parcel.readString();
            mCountry.mCapital = parcel.readString();
            mCountry.mContinent = parcel.readString();
            mCountry.mPopulation = parcel.readInt();
            mCountry.mArea = parcel.readDouble();
            return mCountry;
        }

        @Override
        public Country[] newArray(int i) {
            return new Country[i];
        }
    };

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(mCode);
        parcel.writeString(mName);
        parcel.writeString(mCapital);
        parcel.writeString(mContinent);
        parcel.writeInt(mPopulation);
        parcel.writeDouble(mArea);
    }

}
