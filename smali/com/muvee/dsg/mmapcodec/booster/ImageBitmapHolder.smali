.class public Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;
.super Ljava/lang/Object;
.source "ImageBitmapHolder.java"


# static fields
.field private static final a:Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;-><init>()V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->a:Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->b:Ljava/util/Map;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->c:Z

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static getInstance()Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->a:Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 25
    const-string v0, "ImageBitmapHolder"

    new-instance v1, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$1;-><init>(Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 35
    return-void
.end method

.method public clearFromDir(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    const-string v0, "ImageBitmapHolder"

    new-instance v1, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$2;-><init>(Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->c:Z

    return v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 38
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->b:Ljava/util/Map;

    monitor-enter v1

    .line 39
    :try_start_0
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->c:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    monitor-exit v1

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEnable(Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->c:Z

    .line 75
    return-void
.end method
