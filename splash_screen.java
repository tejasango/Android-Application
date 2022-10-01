package com.example.sys.sircilla;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

public class splash_screen extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash_screen);
        Thread th=new Thread()
        {
        public void run()
            {
                try{
                    sleep(3000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                finally {
                    Intent in =new Intent(getApplicationContext(),MainActivity.class);
                    startActivity(in);
                    finish();
                }
                super.run();
            }
        };th.start();

    }
}
