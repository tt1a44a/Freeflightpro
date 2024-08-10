.class public Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;
.super Ljava/lang/Object;
.source "ImageCacheFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdInfo"
.end annotation


# instance fields
.field public idBytesSize:I

.field public idPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/16 v0, 0x100

    iput v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;->idBytesSize:I

    .line 64
    const-string v0, "cache.id:"

    iput-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$IdInfo;->idPrefix:Ljava/lang/String;

    return-void
.end method
