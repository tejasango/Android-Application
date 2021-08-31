.class public Lcom/example/sys/sircilla/splash_screen;
.super Landroid/support/v7/app/AppCompatActivity;
.source "splash_screen.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 11
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/example/sys/sircilla/splash_screen;->setContentView(I)V

    .line 13
    new-instance v0, Lcom/example/sys/sircilla/splash_screen$1;

    invoke-direct {v0, p0}, Lcom/example/sys/sircilla/splash_screen$1;-><init>(Lcom/example/sys/sircilla/splash_screen;)V

    .line 29
    .local v0, "th":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    return-void
.end method
