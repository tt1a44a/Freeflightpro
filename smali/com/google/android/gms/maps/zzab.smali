.class final Lcom/google/android/gms/maps/zzab;
.super Lcom/google/android/gms/maps/internal/zzaq;


# instance fields
.field private final synthetic zzbc:Lcom/google/android/gms/maps/OnMapReadyCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/MapFragment$zza;Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzab;->zzbc:Lcom/google/android/gms/maps/OnMapReadyCallback;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzaq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/zzab;->zzbc:Lcom/google/android/gms/maps/OnMapReadyCallback;

    new-instance v1, Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/GoogleMap;-><init>(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/OnMapReadyCallback;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 3
    return-void
.end method
