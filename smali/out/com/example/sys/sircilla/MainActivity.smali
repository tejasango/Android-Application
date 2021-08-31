.class public Lcom/example/sys/sircilla/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# instance fields
.field ft:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/sys/sircilla/MainActivity;->ft:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 4

    .line 74
    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Lcom/example/sys/sircilla/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 75
    .local v0, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 76
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_19

    .line 78
    :cond_16
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 80
    :goto_19
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/example/sys/sircilla/MainActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f0800db

    invoke-virtual {p0, v0}, Lcom/example/sys/sircilla/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 39
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/example/sys/sircilla/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 45
    new-instance v1, Lcom/example/sys/sircilla/HistoryFragment;

    invoke-direct {v1}, Lcom/example/sys/sircilla/HistoryFragment;-><init>()V

    iput-object v1, p0, Lcom/example/sys/sircilla/MainActivity;->ft:Landroid/support/v4/app/Fragment;

    .line 47
    iget-object v1, p0, Lcom/example/sys/sircilla/MainActivity;->ft:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_33

    .line 48
    invoke-virtual {p0}, Lcom/example/sys/sircilla/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 49
    .local v1, "ftmn":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 50
    .local v2, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f080037

    iget-object v4, p0, Lcom/example/sys/sircilla/MainActivity;->ft:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 51
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 53
    .end local v1    # "ftmn":Landroid/support/v4/app/FragmentManager;
    .end local v2    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_33
    const v1, 0x7f080050

    invoke-virtual {p0, v1}, Lcom/example/sys/sircilla/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/support/design/widget/FloatingActionButton;

    .line 54
    .local v7, "fab":Landroid/support/design/widget/FloatingActionButton;
    new-instance v1, Lcom/example/sys/sircilla/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/example/sys/sircilla/MainActivity$1;-><init>(Lcom/example/sys/sircilla/MainActivity;)V

    invoke-virtual {v7, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v1, 0x7f080047

    invoke-virtual {p0, v1}, Lcom/example/sys/sircilla/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/support/v4/widget/DrawerLayout;

    .line 63
    .local v8, "drawer":Landroid/support/v4/widget/DrawerLayout;
    new-instance v9, Landroid/support/v7/app/ActionBarDrawerToggle;

    const v5, 0x7f0e005c

    const v6, 0x7f0e005b

    move-object v1, v9

    move-object v2, p0

    move-object v3, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 65
    .local v1, "toggle":Landroid/support/v7/app/ActionBarDrawerToggle;
    invoke-virtual {v8, v1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 66
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 68
    const v2, 0x7f080086

    invoke-virtual {p0, v2}, Lcom/example/sys/sircilla/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/NavigationView;

    .line 69
    .local v2, "navigationView":Landroid/support/design/widget/NavigationView;
    invoke-virtual {v2, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 70
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .line 85
    invoke-virtual {p0}, Lcom/example/sys/sircilla/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 86
    const v0, 0x7f080078

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 87
    .local v1, "itemSwitch":Landroid/view/MenuItem;
    const v2, 0x7f0b004c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 88
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080017

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 89
    .local v0, "sw":Landroid/widget/Switch;
    new-instance v2, Lcom/example/sys/sircilla/MainActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/example/sys/sircilla/MainActivity$2;-><init>(Lcom/example/sys/sircilla/MainActivity;Landroid/widget/Switch;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    const/4 v2, 0x1

    return v2
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 127
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 128
    .local v0, "id":I
    const/4 v1, 0x0

    .line 130
    .local v1, "ft":Landroid/support/v4/app/Fragment;
    const v2, 0x7f08007d

    if-ne v0, v2, :cond_12

    .line 131
    new-instance v2, Lcom/example/sys/sircilla/HistoryFragment;

    invoke-direct {v2}, Lcom/example/sys/sircilla/HistoryFragment;-><init>()V

    move-object v1, v2

    goto/16 :goto_104

    .line 132
    :cond_12
    const v2, 0x7f08007f

    if-ne v0, v2, :cond_2e

    .line 134
    const-string v2, "google.navigation:q=18.467567, 78.870880"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 135
    .local v2, "gmmIntentUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 136
    .local v3, "mapIntent":Landroid/content/Intent;
    const-string v4, "com.google.android.apps.maps"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v3}, Lcom/example/sys/sircilla/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    .end local v2    # "gmmIntentUri":Landroid/net/Uri;
    .end local v3    # "mapIntent":Landroid/content/Intent;
    goto/16 :goto_104

    :cond_2e
    const v2, 0x7f080080

    if-ne v0, v2, :cond_4a

    .line 140
    const-string v2, "geo:18.388365, 78.801615?q=hospitals"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 141
    .restart local v2    # "gmmIntentUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    .restart local v3    # "mapIntent":Landroid/content/Intent;
    const-string v4, "com.google.android.apps.maps"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v3}, Lcom/example/sys/sircilla/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    .end local v2    # "gmmIntentUri":Landroid/net/Uri;
    .end local v3    # "mapIntent":Landroid/content/Intent;
    goto/16 :goto_104

    :cond_4a
    const v2, 0x7f08007b

    if-ne v0, v2, :cond_57

    .line 146
    new-instance v2, Lcom/example/sys/sircilla/EventFragment;

    invoke-direct {v2}, Lcom/example/sys/sircilla/EventFragment;-><init>()V

    move-object v1, v2

    goto/16 :goto_104

    .line 148
    :cond_57
    const v2, 0x7f080081

    if-ne v0, v2, :cond_64

    .line 149
    new-instance v2, Lcom/example/sys/sircilla/PlaccesFragment;

    invoke-direct {v2}, Lcom/example/sys/sircilla/PlaccesFragment;-><init>()V

    move-object v1, v2

    goto/16 :goto_104

    .line 151
    :cond_64
    const v2, 0x7f080085

    if-ne v0, v2, :cond_80

    .line 152
    const-string v2, "geo:18.388365, 78.801615?q=busstop"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 153
    .restart local v2    # "gmmIntentUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 154
    .restart local v3    # "mapIntent":Landroid/content/Intent;
    const-string v4, "com.google.android.apps.maps"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v3}, Lcom/example/sys/sircilla/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 157
    .end local v2    # "gmmIntentUri":Landroid/net/Uri;
    .end local v3    # "mapIntent":Landroid/content/Intent;
    goto/16 :goto_104

    .line 158
    :cond_80
    const v2, 0x7f080084

    if-ne v0, v2, :cond_8d

    .line 159
    new-instance v2, Lcom/example/sys/sircilla/TemplesFragment;

    invoke-direct {v2}, Lcom/example/sys/sircilla/TemplesFragment;-><init>()V

    move-object v1, v2

    goto/16 :goto_104

    .line 161
    :cond_8d
    const v2, 0x7f08007e

    if-ne v0, v2, :cond_a8

    .line 163
    const-string v2, "geo:18.388365, 78.801615?q=restaurants+hotels"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 164
    .restart local v2    # "gmmIntentUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 165
    .restart local v3    # "mapIntent":Landroid/content/Intent;
    const-string v4, "com.google.android.apps.maps"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v3}, Lcom/example/sys/sircilla/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 168
    .end local v2    # "gmmIntentUri":Landroid/net/Uri;
    .end local v3    # "mapIntent":Landroid/content/Intent;
    goto :goto_104

    .line 169
    :cond_a8
    const v2, 0x7f08007c

    if-ne v0, v2, :cond_b4

    .line 170
    new-instance v2, Lcom/example/sys/sircilla/FolkFragment;

    invoke-direct {v2}, Lcom/example/sys/sircilla/FolkFragment;-><init>()V

    move-object v1, v2

    goto :goto_104

    .line 172
    :cond_b4
    const v2, 0x7f080079

    if-ne v0, v2, :cond_c0

    .line 173
    new-instance v2, Lcom/example/sys/sircilla/DevotionalFragment;

    invoke-direct {v2}, Lcom/example/sys/sircilla/DevotionalFragment;-><init>()V

    move-object v1, v2

    goto :goto_104

    .line 175
    :cond_c0
    const v2, 0x7f080083

    if-ne v0, v2, :cond_f3

    .line 176
    invoke-virtual {p0}, Lcom/example/sys/sircilla/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 177
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 178
    .local v3, "apkpath":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v5, "android.intent.extra.STREAM"

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 181
    const-string v5, "Share app via"

    invoke-static {v4, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/example/sys/sircilla/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "apkpath":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_104

    .line 184
    :cond_f3
    const v2, 0x7f080082

    if-ne v0, v2, :cond_f9

    goto :goto_104

    .line 187
    :cond_f9
    const v2, 0x7f08007a

    if-ne v0, v2, :cond_104

    .line 188
    new-instance v2, Lcom/example/sys/sircilla/EmergencyFragment;

    invoke-direct {v2}, Lcom/example/sys/sircilla/EmergencyFragment;-><init>()V

    move-object v1, v2

    .line 190
    :cond_104
    :goto_104
    if-eqz v1, :cond_117

    .line 191
    invoke-virtual {p0}, Lcom/example/sys/sircilla/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 192
    .local v2, "ftmn":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 193
    .local v3, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v4, 0x7f080037

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 194
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 196
    .end local v2    # "ftmn":Landroid/support/v4/app/FragmentManager;
    .end local v3    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_117
    const v2, 0x7f080047

    invoke-virtual {p0, v2}, Lcom/example/sys/sircilla/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    .line 197
    .local v2, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 198
    const/4 v3, 0x1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 116
    .local v0, "id":I
    const v1, 0x7f080078

    if-ne v0, v1, :cond_b

    .line 117
    const/4 v1, 0x1

    return v1

    .line 120
    :cond_b
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public restartapp()V
    .registers 4

    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/example/sys/sircilla/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/sys/sircilla/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/sys/sircilla/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 204
    invoke-virtual {p0}, Lcom/example/sys/sircilla/MainActivity;->finish()V

    .line 205
    return-void
.end method
