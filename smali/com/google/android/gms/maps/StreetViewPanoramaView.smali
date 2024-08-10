.class public Lcom/google/android/gms/maps/StreetViewPanoramaView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;,
        Lcom/google/android/gms/maps/StreetViewPanoramaView$zza;
    }
.end annotation


# instance fields
.field private final zzcd:Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zzcd:Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zzcd:Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zzcd:Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zzcd:Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    .line 12
    return-void
.end method


# virtual methods
.method public getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V
    .locals 1

    .prologue
    .line 36
    const-string v0, "getStreetViewPanoramaAsync() must be called on the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zzcd:Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V

    .line 38
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 13
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 14
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zzcd:Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->onCreate(Landroid/os/Bundle;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zzcd:Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->showGooglePlayUnavailableMessage(Landroid/widget/FrameLayout;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zzcd:Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->onDestroy()V

    .line 31
    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zzcd:Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->onLowMemory()V

    .line 33
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zzcd:Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->onPause()V

    .line 27
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zzcd:Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->onResume()V

    .line 25
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zzcd:Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zzcd:Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->onStart()V

    .line 23
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->zzcd:Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$zzb;->onStop()V

    .line 29
    return-void
.end method
