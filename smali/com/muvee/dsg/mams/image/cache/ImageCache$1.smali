.class Lcom/muvee/dsg/mams/image/cache/ImageCache$1;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mams/image/cache/ImageCache;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mams/image/cache/ImageCache;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mams/image/cache/ImageCache;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache$1;->a:Lcom/muvee/dsg/mams/image/cache/ImageCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 64
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache$1;->a:Lcom/muvee/dsg/mams/image/cache/ImageCache;

    invoke-static {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->a(Lcom/muvee/dsg/mams/image/cache/ImageCache;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache$1;->a:Lcom/muvee/dsg/mams/image/cache/ImageCache;

    invoke-static {v1}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->a(Lcom/muvee/dsg/mams/image/cache/ImageCache;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    new-instance v1, Lcom/muvee/dsg/mams/image/cache/ImageCache$1$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mams/image/cache/ImageCache$1$1;-><init>(Lcom/muvee/dsg/mams/image/cache/ImageCache$1;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_1

    array-length v0, v1

    if-lez v0, :cond_1

    .line 77
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 78
    iget-object v4, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache$1;->a:Lcom/muvee/dsg/mams/image/cache/ImageCache;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->a(Lcom/muvee/dsg/mams/image/cache/ImageCache;Ljava/lang/String;)Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;

    move-result-object v4

    .line 79
    if-eqz v4, :cond_0

    .line 80
    new-instance v5, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    .line 81
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache$1;->a:Lcom/muvee/dsg/mams/image/cache/ImageCache;

    .line 82
    invoke-static {v6}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->b(Lcom/muvee/dsg/mams/image/cache/ImageCache;)I

    move-result v6

    new-instance v7, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;

    invoke-direct {v7}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;-><init>()V

    invoke-direct {v5, v3, v6, v4, v7}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;-><init>(Ljava/lang/String;ILcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;)V

    .line 85
    iget-object v3, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache$1;->a:Lcom/muvee/dsg/mams/image/cache/ImageCache;

    invoke-static {v3}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->c(Lcom/muvee/dsg/mams/image/cache/ImageCache;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 86
    :try_start_0
    iget-object v4, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache$1;->a:Lcom/muvee/dsg/mams/image/cache/ImageCache;

    invoke-static {v4}, Lcom/muvee/dsg/mams/image/cache/ImageCache;->c(Lcom/muvee/dsg/mams/image/cache/ImageCache;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v5}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    monitor-exit v3

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 94
    :cond_1
    return-void
.end method
