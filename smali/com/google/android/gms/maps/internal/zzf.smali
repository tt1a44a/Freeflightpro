.class public final Lcom/google/android/gms/maps/internal/zzf;
.super Lcom/google/android/gms/internal/maps/zza;

# interfaces
.implements Lcom/google/android/gms/maps/internal/zze;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 1
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/maps/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/internal/IMapViewDelegate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/maps/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 17
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 18
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 19
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/maps/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 29
    return-object v0

    .line 23
    :cond_0
    const-string v0, "com.google.android.gms.maps.internal.IMapViewDelegate"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 24
    instance-of v3, v0, Lcom/google/android/gms/maps/internal/IMapViewDelegate;

    if-eqz v3, :cond_1

    .line 25
    check-cast v0, Lcom/google/android/gms/maps/internal/IMapViewDelegate;

    goto :goto_0

    .line 26
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/internal/zzk;

    invoke-direct {v0, v2}, Lcom/google/android/gms/maps/internal/zzk;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/maps/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 53
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 54
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 55
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/maps/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 57
    if-nez v2, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 64
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 65
    return-object v0

    .line 59
    :cond_0
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    instance-of v3, v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    if-eqz v3, :cond_1

    .line 61
    check-cast v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/internal/zzbw;

    invoke-direct {v0, v2}, Lcom/google/android/gms/maps/internal/zzbw;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/maps/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 48
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 49
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/maps/zza;->zzb(ILandroid/os/Parcel;)V

    .line 51
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/maps/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/maps/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 7
    if-nez v2, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15
    return-object v0

    .line 9
    :cond_0
    const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 10
    instance-of v3, v0, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    if-eqz v3, :cond_1

    .line 11
    check-cast v0, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/internal/zzj;

    invoke-direct {v0, v2}, Lcom/google/android/gms/maps/internal/zzj;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/maps/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 67
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 68
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/maps/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 70
    if-nez v2, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 77
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 78
    return-object v0

    .line 72
    :cond_0
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    instance-of v3, v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    if-eqz v3, :cond_1

    .line 74
    check-cast v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/internal/zzbv;

    invoke-direct {v0, v2}, Lcom/google/android/gms/maps/internal/zzbv;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final zze()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/maps/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 31
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/maps/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 40
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 41
    return-object v0

    .line 35
    :cond_0
    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    instance-of v3, v0, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    if-eqz v3, :cond_1

    .line 37
    check-cast v0, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/internal/zzb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/maps/internal/zzb;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final zzf()Lcom/google/android/gms/internal/maps/zze;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/maps/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 43
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/maps/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/maps/zzf;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zze;

    move-result-object v1

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    return-object v1
.end method
