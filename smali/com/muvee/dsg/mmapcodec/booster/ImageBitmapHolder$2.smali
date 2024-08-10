.class Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$2;
.super Ljava/lang/Object;
.source "ImageBitmapHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->clearFromDir(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$2;->b:Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;

    iput-object p2, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 48
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$2;->b:Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->a(Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 49
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$2;->b:Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->a(Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$2;->b:Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;

    invoke-static {v1}, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->a(Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 53
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 56
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$2;->b:Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;

    invoke-static {v3}, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->a(Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder$2;->b:Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;->a(Lcom/muvee/dsg/mmapcodec/booster/ImageBitmapHolder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 60
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    return-void
.end method
