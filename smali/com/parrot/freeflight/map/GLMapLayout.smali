.class public Lcom/parrot/freeflight/map/GLMapLayout;
.super Landroid/widget/FrameLayout;
.source "GLMapLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;,
        Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;,
        Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;,
        Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;,
        Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;,
        Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;,
        Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;,
        Lcom/parrot/freeflight/map/GLMapLayout$CameraChangedListener;,
        Lcom/parrot/freeflight/map/GLMapLayout$AnimationListener;
    }
.end annotation


# instance fields
.field private final mAnimationListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/map/GLMapLayout$AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraChangedListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/map/GLMapLayout$CameraChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIMap:Lcom/parrot/freeflight/map/IMap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMapSizeChangedListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnMapClickListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/map/GLMapLayout$EventPriority",
            "<",
            "Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOnMapLongClickListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/map/GLMapLayout$EventPriority",
            "<",
            "Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOnMapScrollListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/map/GLMapLayout$EventPriority",
            "<",
            "Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOnMapTouchDownListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOnMapTouchUpListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/map/GLMapLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/map/GLMapLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mAnimationListeners:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mCameraChangedListeners:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mMapSizeChangedListeners:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapScrollListeners:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapClickListeners:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapLongClickListeners:Ljava/util/List;

    .line 87
    return-void
.end method

.method private getEventForListener(Ljava/util/List;Ljava/lang/Object;)Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/map/GLMapLayout$EventPriority",
            "<TT;>;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/map/GLMapLayout$EventPriority<TT;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;

    .line 235
    .local v0, "event":Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;
    iget-object v2, v0, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;->listener:Ljava/lang/Object;

    if-ne v2, p2, :cond_0

    .line 239
    .end local v0    # "event":Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyOnMapTouchDownListener(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 408
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapTouchDownListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapTouchDownListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;->onMapTouchDown(Landroid/view/MotionEvent;)V

    .line 411
    :cond_0
    return-void
.end method

.method private notifyOnMapTouchUpListener()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapTouchUpListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapTouchUpListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;->onMapTouchUp()V

    .line 400
    :cond_0
    return-void
.end method

.method private sortEvents(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/map/GLMapLayout$EventPriority",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/map/GLMapLayout$EventPriority<TT;>;>;"
    new-instance v0, Lcom/parrot/freeflight/map/GLMapLayout$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/map/GLMapLayout$4;-><init>(Lcom/parrot/freeflight/map/GLMapLayout;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 231
    return-void
.end method


# virtual methods
.method public addAnimationListener(Lcom/parrot/freeflight/map/GLMapLayout$AnimationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/map/GLMapLayout$AnimationListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 244
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_0
    return-void
.end method

.method public addCameraChangedListener(Lcom/parrot/freeflight/map/GLMapLayout$CameraChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/map/GLMapLayout$CameraChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 271
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mCameraChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mCameraChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_0
    return-void
.end method

.method public addOnMapClickListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "priority"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapClickListeners:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/parrot/freeflight/map/GLMapLayout;->getEventForListener(Ljava/util/List;Ljava/lang/Object;)Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;

    move-result-object v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapClickListeners:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;

    invoke-direct {v1, p0, p1, p2}, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;-><init>(Lcom/parrot/freeflight/map/GLMapLayout;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapClickListeners:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/map/GLMapLayout;->sortEvents(Ljava/util/List;)V

    .line 318
    :cond_0
    return-void
.end method

.method public addOnMapLongClickListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "priority"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapLongClickListeners:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/parrot/freeflight/map/GLMapLayout;->getEventForListener(Ljava/util/List;Ljava/lang/Object;)Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;

    move-result-object v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapLongClickListeners:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;

    invoke-direct {v1, p0, p1, p2}, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;-><init>(Lcom/parrot/freeflight/map/GLMapLayout;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapLongClickListeners:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/map/GLMapLayout;->sortEvents(Ljava/util/List;)V

    .line 345
    :cond_0
    return-void
.end method

.method public addOnMapScrollListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "priority"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapScrollListeners:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/parrot/freeflight/map/GLMapLayout;->getEventForListener(Ljava/util/List;Ljava/lang/Object;)Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;

    move-result-object v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapScrollListeners:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;

    invoke-direct {v1, p0, p1, p2}, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;-><init>(Lcom/parrot/freeflight/map/GLMapLayout;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapScrollListeners:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/map/GLMapLayout;->sortEvents(Ljava/util/List;)V

    .line 372
    :cond_0
    return-void
.end method

.method public addSizeChangedListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 292
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mMapSizeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mMapSizeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/GLMapLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/map/GLMapLayout;->getHeight()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;->onSizeChanged(II)V

    .line 296
    :cond_0
    return-void
.end method

.method public animateCamera(Lcom/google/android/gms/maps/model/LatLng;FF)V
    .locals 2
    .param p1, "newLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newZoom"    # F
    .param p3, "newBearing"    # F

    .prologue
    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mIMap:Lcom/parrot/freeflight/map/IMap;

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mIMap:Lcom/parrot/freeflight/map/IMap;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/parrot/freeflight/map/IMap;->moveCamera(Lcom/google/android/gms/maps/model/LatLng;FFZ)V

    goto :goto_0
.end method

.method public animateCameraBearing(F)V
    .locals 0
    .param p1, "newBearing"    # F

    .prologue
    .line 203
    return-void
.end method

.method public animateCameraBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)V
    .locals 2
    .param p1, "latLngBounds"    # Lcom/google/android/gms/maps/model/LatLngBounds;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "padding"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mIMap:Lcom/parrot/freeflight/map/IMap;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mIMap:Lcom/parrot/freeflight/map/IMap;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/parrot/freeflight/map/IMap;->moveCamera(Lcom/google/android/gms/maps/model/LatLngBounds;IZ)V

    goto :goto_0
.end method

.method public animateCameraLocation(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "newLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    return-void
.end method

.method public animateCameraLocationZoom(Lcom/google/android/gms/maps/model/LatLng;F)V
    .locals 0
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newZoom"    # F

    .prologue
    .line 187
    return-void
.end method

.method public animateCameraZoom(F)V
    .locals 0
    .param p1, "newZoom"    # F

    .prologue
    .line 191
    return-void
.end method

.method public animateCameraZoomIn()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public animateCameraZoomOut()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mIMap:Lcom/parrot/freeflight/map/IMap;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 127
    .local v0, "eventHandled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 138
    :goto_1
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 129
    :pswitch_0
    invoke-direct {p0}, Lcom/parrot/freeflight/map/GLMapLayout;->notifyOnMapTouchUpListener()V

    goto :goto_1

    .line 132
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/map/GLMapLayout;->notifyOnMapTouchDownListener(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 135
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/map/GLMapLayout;->notifyOnMapScrollListeners(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 138
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public moveCamera(Lcom/google/android/gms/maps/model/LatLng;FF)V
    .locals 1
    .param p1, "newLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newZoom"    # F
    .param p3, "newBearing"    # F

    .prologue
    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mIMap:Lcom/parrot/freeflight/map/IMap;

    if-nez v0, :cond_0

    .line 147
    :cond_0
    return-void
.end method

.method public moveCameraBearing(F)V
    .locals 0
    .param p1, "newBearing"    # F

    .prologue
    .line 173
    return-void
.end method

.method public moveCameraBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)V
    .locals 2
    .param p1, "latLngBounds"    # Lcom/google/android/gms/maps/model/LatLngBounds;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "padding"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mIMap:Lcom/parrot/freeflight/map/IMap;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mIMap:Lcom/parrot/freeflight/map/IMap;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/parrot/freeflight/map/IMap;->moveCamera(Lcom/google/android/gms/maps/model/LatLngBounds;IZ)V

    goto :goto_0
.end method

.method public moveCameraLocation(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "newLatLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 157
    return-void
.end method

.method public moveCameraZoom(F)V
    .locals 0
    .param p1, "newZoom"    # F

    .prologue
    .line 161
    return-void
.end method

.method public moveCameraZoomIn()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public moveCameraZoomOut()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public notifyAnimationEndListeners()V
    .locals 3

    .prologue
    .line 264
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/map/GLMapLayout$AnimationListener;

    .line 265
    .local v0, "listener":Lcom/parrot/freeflight/map/GLMapLayout$AnimationListener;
    invoke-interface {v0}, Lcom/parrot/freeflight/map/GLMapLayout$AnimationListener;->onAnimationEnd()V

    goto :goto_0

    .line 267
    .end local v0    # "listener":Lcom/parrot/freeflight/map/GLMapLayout$AnimationListener;
    :cond_0
    return-void
.end method

.method public notifyAnimationStartListeners()V
    .locals 3

    .prologue
    .line 258
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/map/GLMapLayout$AnimationListener;

    .line 259
    .local v0, "listener":Lcom/parrot/freeflight/map/GLMapLayout$AnimationListener;
    invoke-interface {v0}, Lcom/parrot/freeflight/map/GLMapLayout$AnimationListener;->onAnimationStart()V

    goto :goto_0

    .line 261
    .end local v0    # "listener":Lcom/parrot/freeflight/map/GLMapLayout$AnimationListener;
    :cond_0
    return-void
.end method

.method public notifyCameraChangedListeners()V
    .locals 3

    .prologue
    .line 285
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mCameraChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/map/GLMapLayout$CameraChangedListener;

    .line 286
    .local v0, "listener":Lcom/parrot/freeflight/map/GLMapLayout$CameraChangedListener;
    invoke-interface {v0}, Lcom/parrot/freeflight/map/GLMapLayout$CameraChangedListener;->onCameraChanged()V

    goto :goto_0

    .line 288
    .end local v0    # "listener":Lcom/parrot/freeflight/map/GLMapLayout$CameraChangedListener;
    :cond_0
    return-void
.end method

.method public notifyOnMapClickListeners(Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 330
    const/4 v1, 0x0

    .line 331
    .local v1, "handled":Z
    iget-object v2, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapClickListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;

    .line 332
    .local v0, "event":Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;, "Lcom/parrot/freeflight/map/GLMapLayout$EventPriority<Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;>;"
    iget-object v2, v0, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;->listener:Ljava/lang/Object;

    check-cast v2, Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;

    invoke-interface {v2, p1}, Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;->onMapClick(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    const/4 v2, 0x1

    .line 336
    .end local v0    # "event":Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;, "Lcom/parrot/freeflight/map/GLMapLayout$EventPriority<Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyOnMapLongClickListeners(Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 357
    const/4 v1, 0x0

    .line 358
    .local v1, "handled":Z
    iget-object v2, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapLongClickListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;

    .line 359
    .local v0, "event":Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;, "Lcom/parrot/freeflight/map/GLMapLayout$EventPriority<Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;>;"
    iget-object v2, v0, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;->listener:Ljava/lang/Object;

    check-cast v2, Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;

    invoke-interface {v2, p1}, Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;->onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    const/4 v2, 0x1

    .line 363
    .end local v0    # "event":Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;, "Lcom/parrot/freeflight/map/GLMapLayout$EventPriority<Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyOnMapScrollListeners(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 384
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;

    .line 385
    .local v0, "event":Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;, "Lcom/parrot/freeflight/map/GLMapLayout$EventPriority<Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;>;"
    iget-object v1, v0, Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;->listener:Ljava/lang/Object;

    check-cast v1, Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;

    invoke-interface {v1, p1}, Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;->onMapScroll(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    const/4 v1, 0x1

    .line 389
    .end local v0    # "event":Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;, "Lcom/parrot/freeflight/map/GLMapLayout$EventPriority<Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;>;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifySizeChangedListeners(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 307
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mMapSizeChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;

    .line 308
    .local v0, "listener":Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;
    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;->onSizeChanged(II)V

    goto :goto_0

    .line 310
    .end local v0    # "listener":Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/map/GLMapLayout;->notifySizeChangedListeners(II)V

    .line 93
    return-void
.end method

.method public removeAnimationListener(Lcom/parrot/freeflight/map/GLMapLayout$AnimationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/map/GLMapLayout$AnimationListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 250
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public removeAnimationListeners()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 255
    return-void
.end method

.method public removeCameraChangedListener(Lcom/parrot/freeflight/map/GLMapLayout$CameraChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/map/GLMapLayout$CameraChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 277
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mCameraChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public removeCameraChangedListeners()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mCameraChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 282
    return-void
.end method

.method public removeOnMapClickListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 321
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapClickListeners:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lcom/parrot/freeflight/map/GLMapLayout;->getEventForListener(Ljava/util/List;Ljava/lang/Object;)Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;

    move-result-object v0

    .line 322
    .local v0, "event":Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapClickListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method

.method public removeOnMapClickListeners()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 327
    return-void
.end method

.method public removeOnMapLongClickListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/map/GLMapLayout$OnMapLongClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 348
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapLongClickListeners:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lcom/parrot/freeflight/map/GLMapLayout;->getEventForListener(Ljava/util/List;Ljava/lang/Object;)Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;

    move-result-object v0

    .line 349
    .local v0, "event":Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapLongClickListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method

.method public removeOnMapLongClickListeners()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapLongClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 354
    return-void
.end method

.method public removeOnMapScrollListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/map/GLMapLayout$OnMapScrollListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 375
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapScrollListeners:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lcom/parrot/freeflight/map/GLMapLayout;->getEventForListener(Ljava/util/List;Ljava/lang/Object;)Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;

    move-result-object v0

    .line 376
    .local v0, "event":Lcom/parrot/freeflight/map/GLMapLayout$EventPriority;
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method public removeOnMapScrollListeners()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 381
    return-void
.end method

.method public removeSizeChangedListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/map/GLMapLayout$OnMapSizeChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mMapSizeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method

.method public removeSizeChangedListeners()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mMapSizeChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 304
    return-void
.end method

.method public setIMap(Lcom/parrot/freeflight/map/IMap;)V
    .locals 2
    .param p1, "iMap"    # Lcom/parrot/freeflight/map/IMap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    iput-object p1, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mIMap:Lcom/parrot/freeflight/map/IMap;

    .line 97
    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mIMap:Lcom/parrot/freeflight/map/IMap;

    new-instance v1, Lcom/parrot/freeflight/map/GLMapLayout$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/map/GLMapLayout$1;-><init>(Lcom/parrot/freeflight/map/GLMapLayout;)V

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IMap;->setOnCameraMoveListener(Lcom/parrot/freeflight/map/ICameraChangeListener;)V

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mIMap:Lcom/parrot/freeflight/map/IMap;

    new-instance v1, Lcom/parrot/freeflight/map/GLMapLayout$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/map/GLMapLayout$2;-><init>(Lcom/parrot/freeflight/map/GLMapLayout;)V

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mIMap:Lcom/parrot/freeflight/map/IMap;

    new-instance v1, Lcom/parrot/freeflight/map/GLMapLayout$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/map/GLMapLayout$3;-><init>(Lcom/parrot/freeflight/map/GLMapLayout;)V

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    .line 117
    :cond_0
    return-void
.end method

.method public setOnMapTouchDownListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;)V
    .locals 0
    .param p1, "onMapTouchDownListener"    # Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 404
    iput-object p1, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapTouchDownListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchDownListener;

    .line 405
    return-void
.end method

.method public setOnMapTouchUpListener(Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;)V
    .locals 0
    .param p1, "onMapTouchUpListener"    # Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 393
    iput-object p1, p0, Lcom/parrot/freeflight/map/GLMapLayout;->mOnMapTouchUpListener:Lcom/parrot/freeflight/map/GLMapLayout$OnMapTouchUpListener;

    .line 394
    return-void
.end method
