package com.example.sys.sircilla;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatDelegate;
import android.view.View;
import android.support.design.widget.NavigationView;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.CompoundButton;
import android.widget.Switch;

import java.io.File;





public class MainActivity extends AppCompatActivity
        implements NavigationView.OnNavigationItemSelectedListener {
Fragment ft=null;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

       // if(AppCompatDelegate.getDefaultNightMode()==AppCompatDelegate.MODE_NIGHT_YES){
         //   setTheme(R.style.darktheme);
        //}
        //else setTheme(R.style.AppTheme);
        ft=new HistoryFragment();

        if (ft!=null) {
            FragmentManager ftmn = getSupportFragmentManager();
            FragmentTransaction fragmentTransaction = ftmn.beginTransaction();
            fragmentTransaction.replace(R.id.content, ft);
            fragmentTransaction.commit();
        }
        FloatingActionButton fab = (FloatingActionButton) findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
                        .setAction("Action", null).show();
            }
        });

        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(
                this, drawer, toolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        drawer.addDrawerListener(toggle);
        toggle.syncState();

        NavigationView navigationView = (NavigationView) findViewById(R.id.nav_view);
        navigationView.setNavigationItemSelectedListener(this);
    }

    @Override
    public void onBackPressed() {
        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        if (drawer.isDrawerOpen(GravityCompat.START)) {
            drawer.closeDrawer(GravityCompat.START);
        } else {
            super.onBackPressed();
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        MenuItem itemSwitch=menu.findItem(R.id.mySwitch);
        itemSwitch.setActionView(R.layout.useswitch);
        final  Switch sw=(Switch)menu.findItem(R.id.mySwitch).getActionView().findViewById(R.id.action_switch);
        sw.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if (isChecked)
                {
                    getDelegate().setLocalNightMode(AppCompatDelegate.MODE_NIGHT_YES);
                    sw.setText("DayMode");

                }
                else {
                    getDelegate().setLocalNightMode(AppCompatDelegate.MODE_NIGHT_NO);
                    sw.setText("NightMode");
                }
            }
        });
        return true;
    }

   @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();


        //noinspection SimplifiableIfStatement
        if (id == R.id.mySwitch) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }

    @SuppressWarnings("StatementWithEmptyBody")
    @Override
    public boolean onNavigationItemSelected(MenuItem item) {
        // Handle navigation view item clicks here.
        int id = item.getItemId();
        Fragment ft=null;

        if (id == R.id.nav_history) {
            ft=new HistoryFragment();
        } else if (id == R.id.nav_maps) {
            //ft=new MapsFragment();
            Uri gmmIntentUri = Uri.parse("google.navigation:q=18.467567, 78.870880");
            Intent mapIntent = new Intent(Intent.ACTION_VIEW, gmmIntentUri);
            mapIntent.setPackage("com.google.android.apps.maps");
            startActivity(mapIntent);

        } else if (id == R.id.nav_phc) {
            Uri gmmIntentUri = Uri.parse("geo:18.388365, 78.801615?q=hospitals");
            Intent mapIntent = new Intent(Intent.ACTION_VIEW, gmmIntentUri);
            mapIntent.setPackage("com.google.android.apps.maps");
            startActivity(mapIntent);

        } else if (id == R.id.nav_events) {
            ft=new EventFragment();
        }
        else if (id == R.id.nav_places) {
            ft=new PlaccesFragment();
        }
        else if (id == R.id.nav_transport) {
            Uri gmmIntentUri = Uri.parse("geo:18.388365, 78.801615?q=busstop");
            Intent mapIntent = new Intent(Intent.ACTION_VIEW, gmmIntentUri);
            mapIntent.setPackage("com.google.android.apps.maps");
            startActivity(mapIntent);

        }
        else if (id == R.id.nav_temples) {
            ft=new TemplesFragment();
        }
        else if (id == R.id.nav_hotels) {
            // Search for restaurants nearby
            Uri gmmIntentUri = Uri.parse("geo:18.388365, 78.801615?q=restaurants+hotels");
            Intent mapIntent = new Intent(Intent.ACTION_VIEW, gmmIntentUri);
            mapIntent.setPackage("com.google.android.apps.maps");
            startActivity(mapIntent);

        }
        else if (id == R.id.nav_folk) {
            ft=new FolkFragment();
        }
        else if (id == R.id.nav_devotional) {
            ft=new DevotionalFragment();
        }
        else if (id == R.id.nav_share) {
            ApplicationInfo ai=getApplicationContext().getApplicationInfo();
            String apkpath=ai.sourceDir;
            Intent intent=new Intent(Intent.ACTION_SEND);
            intent.setType("application/vnd.android.package-archive");
            intent.putExtra(Intent.EXTRA_STREAM, Uri.fromFile(new File(apkpath)));
            startActivity(Intent.createChooser(intent,"Share app via"));

        }
        else if (id == R.id.nav_rate) {
            //ft=new DevotionalFragment();
        }
        else if (id == R.id.nav_emergency) {
            ft=new EmergencyFragment();
        }
        if (ft!=null) {
            FragmentManager ftmn = getSupportFragmentManager();
            FragmentTransaction fragmentTransaction = ftmn.beginTransaction();
            fragmentTransaction.replace(R.id.content, ft);
            fragmentTransaction.commit();
        }
        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        drawer.closeDrawer(GravityCompat.START);
        return true;
    }
    public void restartapp()
    {
        Intent intent=new Intent(getApplicationContext(),MainActivity.class);
        startActivity(intent);
        finish();
    }
}
