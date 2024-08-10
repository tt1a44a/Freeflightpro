.class Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$1;
.super Ljava/lang/Object;
.source "ImageCacheFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$1;->b:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    iput-object p2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$1;->b:Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;

    invoke-static {v0}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;->a(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;)V

    .line 125
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    .line 127
    return-void
.end method
