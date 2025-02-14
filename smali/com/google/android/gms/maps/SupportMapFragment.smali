.class public Lcom/google/android/gms/maps/SupportMapFragment;
.super Landroid/support/v4/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/SupportMapFragment$zzb;,
        Lcom/google/android/gms/maps/SupportMapFragment$zza;
    }
.end annotation


# instance fields
.field private final zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 8
    new-instance v0, Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    .line 9
    return-void
.end method

.method public static newInstance()Lcom/google/android/gms/maps/SupportMapFragment;
    .locals 1

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-direct {v0}, Lcom/google/android/gms/maps/SupportMapFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/SupportMapFragment;
    .locals 3

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-direct {v0}, Lcom/google/android/gms/maps/SupportMapFragment;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/SupportMapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    .locals 1

    .prologue
    .line 71
    const-string v0, "getMapAsync must be called on the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 73
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    const-class v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 54
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-static {v0, p1}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->zza(Lcom/google/android/gms/maps/SupportMapFragment$zzb;Landroid/app/Activity;)V

    .line 12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onCreate(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 29
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 30
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onDestroy()V

    .line 47
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 48
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onDestroyView()V

    .line 44
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 45
    return-void
.end method

.method public final onEnterAmbient(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 61
    const-string/jumbo v0, "onEnterAmbient must be called on the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/SupportMapFragment$zza;->onEnterAmbient(Landroid/os/Bundle;)V

    .line 65
    :cond_0
    return-void
.end method

.method public final onExitAmbient()V
    .locals 2

    .prologue
    .line 66
    const-string/jumbo v0, "onExitAmbient must be called on the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zza;->onExitAmbient()V

    .line 70
    :cond_0
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 4

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
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-static {v0, p1}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->zza(Lcom/google/android/gms/maps/SupportMapFragment$zzb;Landroid/app/Activity;)V

    .line 18
    invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v0

    .line 19
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 20
    const-string v3, "MapOptions"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0, p1, v2, p3}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onLowMemory()V

    .line 50
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 51
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onPause()V

    .line 35
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 36
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onResume()V

    .line 33
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    const-class v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 58
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onStart()V

    .line 39
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzch:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onStop()V

    .line 41
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 42
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method
