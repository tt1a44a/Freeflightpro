.class public Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;
.super Ljava/lang/Object;
.source "ImageCacheFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mams/image/cache/ImageCacheFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapInfo"
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap$Config;

.field private b:I

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->a:Landroid/graphics/Bitmap$Config;

    .line 37
    const/4 v0, 0x4

    iput v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->b:I

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;)Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->a:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap$Config;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 52
    sget-object v0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$4;->a:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 57
    iput v3, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->b:I

    .line 59
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iput v3, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->b:I

    goto :goto_0

    .line 54
    :pswitch_1
    iput v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->b:I

    goto :goto_0

    .line 55
    :pswitch_2
    iput v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->b:I

    goto :goto_0

    .line 56
    :pswitch_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->b:I

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getBitmapSize()J
    .locals 4

    .prologue
    .line 39
    const-wide/16 v0, 0x1

    iget v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->width:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->height:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->b:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->a:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->a:Landroid/graphics/Bitmap$Config;

    .line 48
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mams/image/cache/ImageCacheFile$BitmapInfo;->a(Landroid/graphics/Bitmap$Config;)V

    .line 49
    return-void
.end method
