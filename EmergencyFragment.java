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
public class EmergencyFragment extends Fragment {


    public EmergencyFragment() {
        // Required empty public constructor
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        getActivity().setTitle("Emergency/Helpline");
        return inflater.inflate(R.layout.fragment_emergency, container, false);
    }

    public void calling(View view){
        Intent intent=new Intent(Intent.ACTION_DIAL);
        switch (view.getId()) {
            case R.id.btn1:   intent.setData(Uri.parse("tel:100"));
                startActivity(intent);
            break;
            case R.id.btn2:   intent.setData(Uri.parse("tel:108"));
                startActivity(intent);
            break;
            case R.id.btn3:   intent.setData(Uri.parse("tel:101"));
                startActivity(intent);
            break;
            case R.id.btn4:   intent.setData(Uri.parse("tel:1098"));
                startActivity(intent);
            break;
        }


    }

}
