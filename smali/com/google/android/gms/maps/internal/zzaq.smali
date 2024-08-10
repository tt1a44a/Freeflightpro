.class public abstract Lcom/google/android/gms/maps/internal/zzaq;
.super Lcom/google/android/gms/internal/maps/zzb;

# interfaces
.implements Lcom/google/android/gms/maps/internal/zzap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string v0, "com.google.android.gms.maps.internal.IOnMapReadyCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/maps/zzb;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 5
    if-nez v2, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/zzaq;->zza(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 15
    :goto_1
    return v0

    .line 7
    :cond_0
    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 8
    instance-of v3, v0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    if-eqz v3, :cond_1

    .line 9
    check-cast v0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/internal/zzg;

    invoke-direct {v0, v2}, Lcom/google/android/gms/maps/internal/zzg;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    .line 15
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
