.class Lcom/muvee/dsg/mams/image/cache/ImageCache$1$1;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mams/image/cache/ImageCache$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mams/image/cache/ImageCache$1;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mams/image/cache/ImageCache$1;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCache$1$1;->a:Lcom/muvee/dsg/mams/image/cache/ImageCache$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 72
    const-string v0, "com.muvee.dsg.image.cache.file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
