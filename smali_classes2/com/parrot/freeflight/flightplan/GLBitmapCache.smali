.class public Lcom/parrot/freeflight/flightplan/GLBitmapCache;
.super Ljava/lang/Object;
.source "GLBitmapCache.java"


# static fields
.field private static final BITMAP_CACHE_SIZE:I = 0x7


# instance fields
.field private final mFlightPlanBitmapCache:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlExtensionsSupport:Lcom/parrot/engine3d/GLExtensionsSupport;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/parrot/engine3d/GLExtensionsSupport;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "glExtensionsSupport"    # Lcom/parrot/engine3d/GLExtensionsSupport;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->mResources:Landroid/content/res/Resources;

    .line 29
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->mGlExtensionsSupport:Lcom/parrot/engine3d/GLExtensionsSupport;

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->mFlightPlanBitmapCache:Landroid/util/SparseArray;

    .line 31
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->mFlightPlanBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 57
    return-void
.end method

.method public load(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "drawableRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_2

    .line 38
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->mFlightPlanBitmapCache:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 40
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 41
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->mResources:Landroid/content/res/Resources;

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->mGlExtensionsSupport:Lcom/parrot/engine3d/GLExtensionsSupport;

    invoke-virtual {v2}, Lcom/parrot/engine3d/GLExtensionsSupport;->nonPowerOfTwoTextureSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Lcom/parrot/freeflight/util/BinaryOp;->getUpperPowerOf2(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Lcom/parrot/freeflight/util/BinaryOp;->getUpperPowerOf2(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 44
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    .line 45
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 47
    :cond_0
    move-object v0, v1

    .line 49
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/GLBitmapCache;->mFlightPlanBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 52
    :cond_2
    return-object v0
.end method
