.class public abstract Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$zza;
.super Lcom/google/android/gms/internal/maps/zzb;

# interfaces
.implements Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string v0, "com.google.android.gms.maps.internal.ILocationSourceDelegate"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/maps/zzb;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 16
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0

    .line 4
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 5
    if-nez v1, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 12
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$zza;->activate(Lcom/google/android/gms/maps/internal/zzah;)V

    .line 17
    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    const/4 v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    const-string v0, "com.google.android.gms.maps.internal.IOnLocationChangeListener"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 8
    instance-of v2, v0, Lcom/google/android/gms/maps/internal/zzah;

    if-eqz v2, :cond_1

    .line 9
    check-cast v0, Lcom/google/android/gms/maps/internal/zzah;

    goto :goto_1

    .line 10
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/internal/zzai;

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/internal/zzai;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    .line 14
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$zza;->deactivate()V

    goto :goto_2

    .line 3
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
