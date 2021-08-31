.class Lcom/example/sys/sircilla/splash_screen$1;
.super Ljava/lang/Thread;
.source "splash_screen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/sys/sircilla/splash_screen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/sys/sircilla/splash_screen;


# direct methods
.method constructor <init>(Lcom/example/sys/sircilla/splash_screen;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/sys/sircilla/splash_screen;

    .line 14
    iput-object p1, p0, Lcom/example/sys/sircilla/splash_screen$1;->this$0:Lcom/example/sys/sircilla/splash_screen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 18
    const-wide/16 v0, 0xbb8

    :try_start_2
    invoke-static {v0, v1}, Lcom/example/sys/sircilla/splash_screen$1;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_1f
    .catchall {:try_start_2 .. :try_end_5} :catchall_1d

    .line 23
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/sys/sircilla/splash_screen$1;->this$0:Lcom/example/sys/sircilla/splash_screen;

    invoke-virtual {v1}, Lcom/example/sys/sircilla/splash_screen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/sys/sircilla/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .local v0, "in":Landroid/content/Intent;
    :goto_12
    iget-object v1, p0, Lcom/example/sys/sircilla/splash_screen$1;->this$0:Lcom/example/sys/sircilla/splash_screen;

    invoke-virtual {v1, v0}, Lcom/example/sys/sircilla/splash_screen;->startActivity(Landroid/content/Intent;)V

    .line 25
    iget-object v1, p0, Lcom/example/sys/sircilla/splash_screen$1;->this$0:Lcom/example/sys/sircilla/splash_screen;

    invoke-virtual {v1}, Lcom/example/sys/sircilla/splash_screen;->finish()V

    .line 26
    .end local v0    # "in":Landroid/content/Intent;
    goto :goto_31

    .line 23
    :catchall_1d
    move-exception v0

    goto :goto_35

    .line 19
    :catch_1f
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1d

    .line 23
    .end local v0    # "e":Ljava/lang/InterruptedException;
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/sys/sircilla/splash_screen$1;->this$0:Lcom/example/sys/sircilla/splash_screen;

    invoke-virtual {v1}, Lcom/example/sys/sircilla/splash_screen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/sys/sircilla/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_12

    .line 27
    :goto_31
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 28
    return-void

    .line 23
    :goto_35
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/sys/sircilla/splash_screen$1;->this$0:Lcom/example/sys/sircilla/splash_screen;

    invoke-virtual {v2}, Lcom/example/sys/sircilla/splash_screen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/example/sys/sircilla/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .local v1, "in":Landroid/content/Intent;
    iget-object v2, p0, Lcom/example/sys/sircilla/splash_screen$1;->this$0:Lcom/example/sys/sircilla/splash_screen;

    invoke-virtual {v2, v1}, Lcom/example/sys/sircilla/splash_screen;->startActivity(Landroid/content/Intent;)V

    .line 25
    iget-object v2, p0, Lcom/example/sys/sircilla/splash_screen$1;->this$0:Lcom/example/sys/sircilla/splash_screen;

    invoke-virtual {v2}, Lcom/example/sys/sircilla/splash_screen;->finish()V

    .line 26
    .end local v1    # "in":Landroid/content/Intent;
    throw v0
.end method
