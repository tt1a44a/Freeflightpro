.class public final Lcom/google/android/gms/maps/model/IndoorBuilding;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/IndoorBuilding$zza;
    }
.end annotation


# instance fields
.field private final zzdd:Lcom/google/android/gms/internal/maps/zzn;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final zzde:Lcom/google/android/gms/maps/model/IndoorBuilding$zza;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/maps/zzn;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/maps/zzn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;->zzdf:Lcom/google/android/gms/maps/model/IndoorBuilding$zza;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/maps/model/IndoorBuilding;-><init>(Lcom/google/android/gms/internal/maps/zzn;Lcom/google/android/gms/maps/model/IndoorBuilding$zza;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/maps/zzn;Lcom/google/android/gms/maps/model/IndoorBuilding$zza;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/maps/zzn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/maps/model/IndoorBuilding$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/maps/zzn;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/maps/zzn;

    .line 5
    const-string/jumbo v0, "shim"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzde:Lcom/google/android/gms/maps/model/IndoorBuilding$zza;

    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 24
    instance-of v0, p1, Lcom/google/android/gms/maps/model/IndoorBuilding;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/maps/zzn;

    check-cast p1, Lcom/google/android/gms/maps/model/IndoorBuilding;

    iget-object v1, p1, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/maps/zzn;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/maps/zzn;->zzb(Lcom/google/android/gms/internal/maps/zzn;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getActiveLevelIndex()I
    .locals 2

    .prologue
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/maps/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzn;->getActiveLevelIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getDefaultLevelIndex()I
    .locals 2

    .prologue
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/maps/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzn;->getDefaultLevelIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getLevels()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/IndoorLevel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/maps/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzn;->getLevels()Ljava/util/List;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zzq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;->zza(Lcom/google/android/gms/internal/maps/zzq;)Lcom/google/android/gms/maps/model/IndoorLevel;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 18
    :cond_0
    return-object v1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/maps/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzn;->zzj()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isUnderground()Z
    .locals 2

    .prologue
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzdd:Lcom/google/android/gms/internal/maps/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzn;->isUnderground()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
