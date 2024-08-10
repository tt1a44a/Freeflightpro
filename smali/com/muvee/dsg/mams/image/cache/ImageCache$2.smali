.class Lcom/muvee/dsg/mams/image/cache/ImageCache$2;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mams/image/cache/ImageCache;->getAsync(Ljava/lang/String;IILcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/muvee/dsg/mams/image/cache/ImageCache;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mams/image/cache/ImageCache;Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache$2;->c:Lcom/muvee/dsg/mams/image/cache/ImageCache;

    iput-object p2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache$2;->a:Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;

    iput-object p3, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultReady(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache$2;->a:Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache$2;->a:Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;

    invoke-interface {v0, p1}, Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;->onResultReady(Landroid/graphics/Bitmap;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache$2;->c:Lcom/muvee/dsg/mams/image/cache/ImageCache;

    invoke-static {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->d(Lcom/muvee/dsg/mams/image/cache/ImageCache;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache$2;->c:Lcom/muvee/dsg/mams/image/cache/ImageCache;

    invoke-static {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->d(Lcom/muvee/dsg/mams/image/cache/ImageCache;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache$2;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
