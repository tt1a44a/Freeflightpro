.class public final Lcom/google/android/gms/maps/MapsInitializer;
.super Ljava/lang/Object;


# static fields
.field private static zzbm:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "MapsInitializer.class"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/maps/MapsInitializer;->zzbm:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1
    const-class v1, Lcom/google/android/gms/maps/MapsInitializer;

    monitor-enter v1

    :try_start_0
    const-string v2, "Context is null"

    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-boolean v2, Lcom/google/android/gms/maps/MapsInitializer;->zzbm:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 14
    :goto_0
    monitor-exit v1

    return v0

    .line 4
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/zzbz;->zza(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/zze;
    :try_end_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 8
    :try_start_2
    invoke-interface {v2}, Lcom/google/android/gms/maps/internal/zze;->zze()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zza(Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;)V

    .line 9
    invoke-interface {v2}, Lcom/google/android/gms/maps/internal/zze;->zzf()Lcom/google/android/gms/internal/maps/zze;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->zza(Lcom/google/android/gms/internal/maps/zze;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    const/4 v2, 0x1

    :try_start_3
    sput-boolean v2, Lcom/google/android/gms/maps/MapsInitializer;->zzbm:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 6
    :catch_0
    move-exception v0

    :try_start_4
    iget v0, v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I

    goto :goto_0

    .line 11
    :catch_1
    move-exception v0

    .line 12
    new-instance v2, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v2, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
