.class public abstract Lcom/google/android/gms/signin/internal/zae;
.super Lcom/google/android/gms/internal/base/zab;

# interfaces
.implements Lcom/google/android/gms/signin/internal/zad;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.signin.internal.ISignInCallbacks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/base/zab;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    packed-switch p1, :pswitch_data_56

    .line 21
    :pswitch_3
    const/4 p1, 0x0

    return p1

    .line 18
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/signin/internal/zaj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/signin/internal/zaj;

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/signin/internal/zae;->zab(Lcom/google/android/gms/signin/internal/zaj;)V

    .line 20
    goto :goto_51

    .line 14
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 15
    sget-object p4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/signin/internal/zae;->zaa(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 17
    goto :goto_51

    .line 11
    :pswitch_25
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/signin/internal/zae;->zah(Lcom/google/android/gms/common/api/Status;)V

    .line 13
    goto :goto_51

    .line 8
    :pswitch_31
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/signin/internal/zae;->zag(Lcom/google/android/gms/common/api/Status;)V

    .line 10
    goto :goto_51

    .line 4
    :pswitch_3d
    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 5
    sget-object p4, Lcom/google/android/gms/signin/internal/zaa;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/signin/internal/zaa;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/signin/internal/zae;->zaa(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/signin/internal/zaa;)V

    .line 7
    nop

    .line 22
    :goto_51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 23
    const/4 p1, 0x1

    return p1

    :pswitch_data_56
    .packed-switch 0x3
        :pswitch_3d
        :pswitch_31
        :pswitch_3
        :pswitch_25
        :pswitch_11
        :pswitch_5
    .end packed-switch
.end method
