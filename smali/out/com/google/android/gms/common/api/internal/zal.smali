.class public abstract Lcom/google/android/gms/common/api/internal/zal;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field protected volatile mStarted:Z

.field protected final zacc:Lcom/google/android/gms/common/GoogleApiAvailability;

.field protected final zade:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/common/api/internal/zam;",
            ">;"
        }
    .end annotation
.end field

.field private final zadf:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zal;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zade:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/base/zal;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/base/zal;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zadf:Landroid/os/Handler;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zal;->zacc:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 7
    return-void
.end method

.method private static zaa(Lcom/google/android/gms/common/api/internal/zam;)I
    .registers 1
    .param p0    # Lcom/google/android/gms/common/api/internal/zam;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    if-nez p0, :cond_4

    .line 77
    const/4 p0, -0x1

    return p0

    .line 78
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zam;->zar()I

    move-result p0

    return p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 37
    nop

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zade:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zam;

    .line 39
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_6c

    goto :goto_55

    .line 40
    :pswitch_f
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zacc:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zal;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1

    .line 41
    if-nez p1, :cond_1c

    .line 42
    goto :goto_1d

    .line 43
    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    if-nez v0, :cond_20

    .line 44
    return-void

    .line 45
    :cond_20
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zam;->getConnectionResult()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p2

    const/16 p3, 0x12

    if-ne p2, p3, :cond_56

    if-ne p1, p3, :cond_56

    .line 47
    return-void

    .line 48
    :pswitch_2f
    const/4 p1, -0x1

    if-ne p2, p1, :cond_33

    .line 49
    goto :goto_56

    .line 50
    :cond_33
    if-nez p2, :cond_55

    .line 51
    nop

    .line 52
    const/16 p1, 0xd

    if-eqz p3, :cond_40

    .line 53
    const-string p2, "<<ResolutionFailureErrorDetail>>"

    .line 54
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 55
    :cond_40
    new-instance p2, Lcom/google/android/gms/common/api/internal/zam;

    new-instance p3, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {p3, p1, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zal;->zaa(Lcom/google/android/gms/common/api/internal/zam;)I

    move-result p1

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/common/api/internal/zam;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 57
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zade:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 58
    move-object v0, p2

    :cond_55
    :goto_55
    const/4 v1, 0x0

    :cond_56
    :goto_56
    if-eqz v1, :cond_5c

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zal;->zaq()V

    return-void

    .line 60
    :cond_5c
    if-eqz v0, :cond_6a

    .line 61
    nop

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zam;->getConnectionResult()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zam;->zar()I

    move-result p2

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/zal;->zaa(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 65
    :cond_6a
    return-void

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_f
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .line 8
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zade:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zam;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zal;->zaa(Lcom/google/android/gms/common/api/internal/zam;)I

    move-result v0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zal;->zaa(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zal;->zaq()V

    .line 12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 13
    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onCreate(Landroid/os/Bundle;)V

    .line 14
    if-eqz p1, :cond_34

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zade:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    const-string v1, "resolving_error"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 17
    if-eqz v1, :cond_30

    .line 18
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const-string v2, "failed_status"

    .line 19
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "failed_resolution"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 20
    const-string v2, "failed_client_id"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 21
    new-instance v2, Lcom/google/android/gms/common/api/internal/zam;

    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/common/api/internal/zam;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto :goto_31

    .line 22
    :cond_30
    const/4 v2, 0x0

    .line 23
    :goto_31
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 24
    :cond_34
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 25
    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 26
    nop

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zade:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zam;

    .line 28
    if-eqz v0, :cond_37

    .line 29
    const-string v1, "resolving_error"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    const-string v1, "failed_client_id"

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zam;->zar()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    const-string v1, "failed_status"

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zam;->getConnectionResult()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    const-string v1, "failed_resolution"

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zam;->getConnectionResult()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 33
    :cond_37
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 34
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStart()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zal;->mStarted:Z

    .line 36
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 66
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStop()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zal;->mStarted:Z

    .line 68
    return-void
.end method

.method protected abstract zaa(Lcom/google/android/gms/common/ConnectionResult;I)V
.end method

.method public final zab(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 4

    .line 72
    new-instance v0, Lcom/google/android/gms/common/api/internal/zam;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zam;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 73
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zade:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 74
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zadf:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/common/api/internal/zan;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/common/api/internal/zan;-><init>(Lcom/google/android/gms/common/api/internal/zal;Lcom/google/android/gms/common/api/internal/zam;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    :cond_18
    return-void
.end method

.method protected abstract zao()V
.end method

.method protected final zaq()V
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zade:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zal;->zao()V

    .line 71
    return-void
.end method
