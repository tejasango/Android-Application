.class public Lcom/example/sys/sircilla/EmergencyFragment;
.super Landroid/support/v4/app/Fragment;
.source "EmergencyFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public calling(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_44

    goto :goto_43

    .line 44
    :pswitch_f
    const-string v1, "tel:1098"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Lcom/example/sys/sircilla/EmergencyFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_43

    .line 41
    :pswitch_1c
    const-string v1, "tel:101"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Lcom/example/sys/sircilla/EmergencyFragment;->startActivity(Landroid/content/Intent;)V

    .line 43
    goto :goto_43

    .line 38
    :pswitch_29
    const-string v1, "tel:108"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v0}, Lcom/example/sys/sircilla/EmergencyFragment;->startActivity(Landroid/content/Intent;)V

    .line 40
    goto :goto_43

    .line 35
    :pswitch_36
    const-string v1, "tel:100"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0, v0}, Lcom/example/sys/sircilla/EmergencyFragment;->startActivity(Landroid/content/Intent;)V

    .line 37
    nop

    .line 50
    :goto_43
    return-void

    :pswitch_data_44
    .packed-switch 0x7f080027
        :pswitch_36
        :pswitch_29
        :pswitch_1c
        :pswitch_f
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 28
    invoke-virtual {p0}, Lcom/example/sys/sircilla/EmergencyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Emergency/Helpline"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    const v0, 0x7f0b002f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
