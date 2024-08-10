.class public Lcom/google/android/gms/maps/StreetViewPanorama;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;,
        Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;,
        Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;,
        Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaChangeListener;
    }
.end annotation


# instance fields
.field private final zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    .line 3
    return-void
.end method


# virtual methods
.method public animateTo(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;J)V
    .locals 2

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->animateTo(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getLocation()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;
    .locals 2

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->getStreetViewPanoramaLocation()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getPanoramaCamera()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 2

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->getPanoramaCamera()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isPanningGesturesEnabled()Z
    .locals 2

    .prologue
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->isPanningGesturesEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isStreetNamesEnabled()Z
    .locals 2

    .prologue
    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->isStreetNamesEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isUserNavigationEnabled()Z
    .locals 2

    .prologue
    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->isUserNavigationEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isZoomGesturesEnabled()Z
    .locals 2

    .prologue
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->isZoomGesturesEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public orientationToPoint(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->orientationToPoint(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 66
    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public pointToOrientation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
    .locals 2

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->pointToOrientation(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnStreetViewPanoramaCameraChangeListener(Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;)V
    .locals 2

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->setOnStreetViewPanoramaCameraChangeListener(Lcom/google/android/gms/maps/internal/zzbh;)V

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    new-instance v1, Lcom/google/android/gms/maps/zzae;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzae;-><init>(Lcom/google/android/gms/maps/StreetViewPanorama;Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->setOnStreetViewPanoramaCameraChangeListener(Lcom/google/android/gms/maps/internal/zzbh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnStreetViewPanoramaChangeListener(Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaChangeListener;)V
    .locals 2

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->setOnStreetViewPanoramaChangeListener(Lcom/google/android/gms/maps/internal/zzbj;)V

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    new-instance v1, Lcom/google/android/gms/maps/zzad;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzad;-><init>(Lcom/google/android/gms/maps/StreetViewPanorama;Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaChangeListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->setOnStreetViewPanoramaChangeListener(Lcom/google/android/gms/maps/internal/zzbj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnStreetViewPanoramaClickListener(Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;)V
    .locals 2

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->setOnStreetViewPanoramaClickListener(Lcom/google/android/gms/maps/internal/zzbl;)V

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    new-instance v1, Lcom/google/android/gms/maps/zzaf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzaf;-><init>(Lcom/google/android/gms/maps/StreetViewPanorama;Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->setOnStreetViewPanoramaClickListener(Lcom/google/android/gms/maps/internal/zzbl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnStreetViewPanoramaLongClickListener(Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;)V
    .locals 2

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->setOnStreetViewPanoramaLongClickListener(Lcom/google/android/gms/maps/internal/zzbn;)V

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    new-instance v1, Lcom/google/android/gms/maps/zzag;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzag;-><init>(Lcom/google/android/gms/maps/StreetViewPanorama;Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->setOnStreetViewPanoramaLongClickListener(Lcom/google/android/gms/maps/internal/zzbn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setPanningGesturesEnabled(Z)V
    .locals 2

    .prologue
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->enablePanning(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setPosition(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 2

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->setPositionWithRadius(Lcom/google/android/gms/maps/model/LatLng;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setPosition(Lcom/google/android/gms/maps/model/LatLng;ILcom/google/android/gms/maps/model/StreetViewSource;)V
    .locals 2

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->setPositionWithRadiusAndSource(Lcom/google/android/gms/maps/model/LatLng;ILcom/google/android/gms/maps/model/StreetViewSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setPosition(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/StreetViewSource;)V
    .locals 2

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->setPositionWithSource(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/StreetViewSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->setPositionWithID(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setStreetNamesEnabled(Z)V
    .locals 2

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->enableStreetNames(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setUserNavigationEnabled(Z)V
    .locals 2

    .prologue
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->enableUserNavigation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setZoomGesturesEnabled(Z)V
    .locals 2

    .prologue
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzbo:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->enableZoom(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
