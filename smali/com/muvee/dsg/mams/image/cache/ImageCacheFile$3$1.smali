.class Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3$1;
.super Ljava/lang/Object;
.source "ImageCacheFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3$1;->b:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;

    iput-object p2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3$1;->b:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;

    iget-object v0, v0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->b:Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3$1;->b:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;

    iget-object v0, v0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3;->b:Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;

    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$3$1;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/muvee/dsg/mams/image/cache/ImageCache$OnResultListener;->onResultReady(Landroid/graphics/Bitmap;)V

    .line 272
    :cond_0
    return-void
.end method
