.class public Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "CenterCrop.java"


# static fields
.field private static final ID:Ljava/lang/String; = "com.bumptech.glide.load.resource.bitmap.CenterCrop"

.field private static final ID_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-string v0, "com.bumptech.glide.load.resource.bitmap.CenterCrop"

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;->ID_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 27
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 32
    const-string v0, "com.bumptech.glide.load.resource.bitmap.CenterCrop"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "toTransform"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .prologue
    .line 22
    invoke-static {p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->centerCrop(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;->ID_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 38
    return-void
.end method
