package com.example.sys.sircilla;


import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;


/**
 * A simple {@link Fragment} subclass.
 */
public class TemplesFragment extends Fragment {


    public TemplesFragment() {
        // Required empty public constructor
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        getActivity().setTitle("Temples");
        return inflater.inflate(R.layout.fragment_temples, container, false);
    }
    public void  vmdl(View view)
    {
        Uri gmmIntentUri = Uri.parse("google.navigation:q=18.467556, 78.870794");
        Intent mapIntent = new Intent(Intent.ACTION_VIEW, gmmIntentUri);
        mapIntent.setPackage("com.google.android.apps.maps");
        startActivity(mapIntent);
    }
    public void  nampally(View view)
    {
        Uri gmmIntentUri = Uri.parse("google.navigation:q=18.442683, 78.869604");
        Intent mapIntent = new Intent(Intent.ACTION_VIEW, gmmIntentUri);
        mapIntent.setPackage("com.google.android.apps.maps");
        startActivity(mapIntent);
    }
    public void  agraharam(View view)
    {
        Uri gmmIntentUri = Uri.parse("google.navigation:q=18.433354, 78.833073");
        Intent mapIntent = new Intent(Intent.ACTION_VIEW, gmmIntentUri);
        mapIntent.setPackage("com.google.android.apps.maps");
        startActivity(mapIntent);
    }
    public void  baddipochamma(View view)
    {
        Uri gmmIntentUri = Uri.parse("google.navigation:q=18.468348, 78.867336");
        Intent mapIntent = new Intent(Intent.ACTION_VIEW, gmmIntentUri);
        mapIntent.setPackage("com.google.android.apps.maps");
        startActivity(mapIntent);
    }
    public void  bheemeshwara(View view)
    {
        Uri gmmIntentUri = Uri.parse("google.navigation:q=18.469178, 78.867105");
        Intent mapIntent = new Intent(Intent.ACTION_VIEW, gmmIntentUri);
        mapIntent.setPackage("com.google.android.apps.maps");
        startActivity(mapIntent);
    }
}
