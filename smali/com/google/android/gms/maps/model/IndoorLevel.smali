.class public final Lcom/google/android/gms/maps/model/IndoorLevel;
.super Ljava/lang/Object;


# instance fields
.field private final zzdg:Lcom/google/android/gms/internal/maps/zzq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/maps/zzq;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/maps/zzq;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zzdg:Lcom/google/android/gms/internal/maps/zzq;

    .line 3
    return-void
.end method


# virtual methods
.method public final activate()V
    .locals 2

    .prologue
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zzdg:Lcom/google/android/gms/internal/maps/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzq;->activate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-void

    .line 12
    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 14
    instance-of v0, p1, Lcom/google/android/gms/maps/model/IndoorLevel;

    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zzdg:Lcom/google/android/gms/internal/maps/zzq;

    check-cast p1, Lcom/google/android/gms/maps/model/IndoorLevel;

    iget-object v1, p1, Lcom/google/android/gms/maps/model/IndoorLevel;->zzdg:Lcom/google/android/gms/internal/maps/zzq;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/maps/zzq;->zzb(Lcom/google/android/gms/internal/maps/zzq;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zzdg:Lcom/google/android/gms/internal/maps/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzq;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getShortName()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zzdg:Lcom/google/android/gms/internal/maps/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzq;->getShortName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zzdg:Lcom/google/android/gms/internal/maps/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzq;->zzj()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
