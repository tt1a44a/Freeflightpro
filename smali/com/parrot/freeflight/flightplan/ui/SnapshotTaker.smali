.class public Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;
.super Ljava/lang/Object;
.source "SnapshotTaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$SnapshotListener;
    }
.end annotation


# static fields
.field private static final SNAPSHOT_SCALE_FACTOR:F = 0.5f


# instance fields
.field private final mFilePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMap:Lcom/parrot/freeflight/map/IMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMapBitmap:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOpenglBitmap:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSnapshotListener:Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$SnapshotListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/parrot/freeflight/map/IMap;Lcom/parrot/freeflight/map/MapGLRenderingView;Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$SnapshotListener;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "map"    # Lcom/parrot/freeflight/map/IMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "glRenderingView"    # Lcom/parrot/freeflight/map/MapGLRenderingView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "snapshotListener"    # Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$SnapshotListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mFilePath:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mMap:Lcom/parrot/freeflight/map/IMap;

    .line 35
    iput-object p3, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    .line 36
    iput-object p4, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mSnapshotListener:Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$SnapshotListener;

    .line 37
    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mMapBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->onSnapshotReady()V

    return-void
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mOpenglBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private onSnapshotReady()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 66
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mMapBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mOpenglBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mMapBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mOpenglBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->superposeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, "composedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    .line 69
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/SnapshotSaver;->save(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mMapBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mMapBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    iput-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mMapBitmap:Landroid/graphics/Bitmap;

    .line 80
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mOpenglBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    iput-object v4, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mOpenglBitmap:Landroid/graphics/Bitmap;

    .line 82
    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mSnapshotListener:Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$SnapshotListener;

    invoke-interface {v1}, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$SnapshotListener;->onSnapshotReady()V

    .line 84
    .end local v0    # "composedBitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method private static superposeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "overlay"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 88
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 90
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 91
    return-object p0
.end method


# virtual methods
.method public takeSnapshot()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mMapBitmap:Landroid/graphics/Bitmap;

    .line 46
    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mOpenglBitmap:Landroid/graphics/Bitmap;

    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mMap:Lcom/parrot/freeflight/map/IMap;

    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$1;-><init>(Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;)V

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IMap;->snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;->mGlRenderingView:Lcom/parrot/freeflight/map/MapGLRenderingView;

    new-instance v1, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker$2;-><init>(Lcom/parrot/freeflight/flightplan/ui/SnapshotTaker;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/MapGLRenderingView;->snapshot(Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;)V

    .line 63
    return-void
.end method
