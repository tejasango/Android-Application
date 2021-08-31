.class public final Lcom/google/android/gms/common/api/internal/zacp;
.super Ljava/lang/Object;


# static fields
.field public static final zakw:Lcom/google/android/gms/common/api/Status;

.field private static final zakx:[Lcom/google/android/gms/common/api/internal/BasePendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final zagy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;"
        }
    .end annotation
.end field

.field final zaky:Ljava/util/Set;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zakz:Lcom/google/android/gms/common/api/internal/zacs;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 45
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The connection to Google Play services was lost"

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/zacp;->zakw:Lcom/google/android/gms/common/api/Status;

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    sput-object v0, Lcom/google/android/gms/common/api/internal/zacp;->zakx:[Lcom/google/android/gms/common/api/internal/BasePendingResult;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zacp;->zaky:Ljava/util/Set;

    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/internal/zacq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zacq;-><init>(Lcom/google/android/gms/common/api/internal/zacp;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zacp;->zakz:Lcom/google/android/gms/common/api/internal/zacs;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacp;->zagy:Ljava/util/Map;

    .line 7
    return-void
.end method


# virtual methods
.method public final release()V
    .registers 9

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacp;->zaky:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/common/api/internal/zacp;->zakx:[Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 12
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_8b

    aget-object v4, v0, v3

    .line 13
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa(Lcom/google/android/gms/common/api/internal/zacs;)V

    .line 14
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/PendingResult;->zam()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_27

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zat()Z

    move-result v5

    if-eqz v5, :cond_88

    .line 16
    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zacp;->zaky:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_88

    .line 17
    :cond_27
    nop

    .line 18
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 19
    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zacp;->zagy:Ljava/util/Map;

    move-object v7, v4

    check-cast v7, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    .line 20
    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v6}, Lcom/google/android/gms/common/api/Api$Client;->getServiceBrokerBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 21
    nop

    .line 22
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 23
    new-instance v7, Lcom/google/android/gms/common/api/internal/zacr;

    invoke-direct {v7, v4, v5, v6, v5}, Lcom/google/android/gms/common/api/internal/zacr;-><init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/common/api/zac;Landroid/os/IBinder;Lcom/google/android/gms/common/api/internal/zacq;)V

    .line 24
    invoke-virtual {v4, v7}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa(Lcom/google/android/gms/common/api/internal/zacs;)V

    .line 25
    goto :goto_83

    :cond_4e
    if-eqz v6, :cond_72

    invoke-interface {v6}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v7

    if-eqz v7, :cond_72

    .line 26
    new-instance v7, Lcom/google/android/gms/common/api/internal/zacr;

    invoke-direct {v7, v4, v5, v6, v5}, Lcom/google/android/gms/common/api/internal/zacr;-><init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/common/api/zac;Landroid/os/IBinder;Lcom/google/android/gms/common/api/internal/zacq;)V

    .line 27
    invoke-virtual {v4, v7}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa(Lcom/google/android/gms/common/api/internal/zacs;)V

    .line 28
    :try_start_5e
    invoke-interface {v6, v7, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_61} :catch_62

    .line 29
    goto :goto_83

    .line 30
    :catch_62
    move-exception v6

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    .line 32
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/PendingResult;->zam()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/zac;->remove(I)V

    .line 33
    goto :goto_83

    .line 34
    :cond_72
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa(Lcom/google/android/gms/common/api/internal/zacs;)V

    .line 35
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/PendingResult;->zam()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/zac;->remove(I)V

    .line 37
    :goto_83
    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zacp;->zaky:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 38
    :cond_88
    :goto_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 39
    :cond_8b
    return-void
.end method

.method final zab(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacp;->zaky:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacp;->zakz:Lcom/google/android/gms/common/api/internal/zacs;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa(Lcom/google/android/gms/common/api/internal/zacs;)V

    .line 10
    return-void
.end method

.method public final zabx()V
    .registers 6

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacp;->zaky:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/common/api/internal/zacp;->zakx:[Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 41
    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 42
    sget-object v4, Lcom/google/android/gms/common/api/internal/zacp;->zakw:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab(Lcom/google/android/gms/common/api/Status;)V

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 44
    :cond_18
    return-void
.end method