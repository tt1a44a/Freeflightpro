.class Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$1;
.super Ljava/lang/Object;
.source "ImageBitmapHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$1;->a:Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$1;->a:Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->a(Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$1;->a:Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->a(Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 29
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 31
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$1;->a:Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->a(Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 32
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    return-void
.end method
