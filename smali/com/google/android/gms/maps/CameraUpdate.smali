.class public final Lcom/google/android/gms/maps/CameraUpdate;
.super Ljava/lang/Object;


# instance fields
.field private final zze:Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/IObjectWrapper;

    iput-object v0, p0, Lcom/google/android/gms/maps/CameraUpdate;->zze:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 3
    return-void
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/maps/CameraUpdate;->zze:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-object v0
.end method
