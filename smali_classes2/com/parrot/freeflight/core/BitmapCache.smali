.class public Lcom/parrot/freeflight/core/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;
    }
.end annotation


# instance fields
.field private final mMemoryCache:Landroid/support/v4/util/LruCache;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 36
    .local v1, "maxMemory":I
    div-int/lit8 v0, v1, 0x8

    .line 38
    .local v0, "cacheSize":I
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/core/BitmapCache;->mResources:Landroid/content/res/Resources;

    .line 40
    new-instance v2, Lcom/parrot/freeflight/core/BitmapCache$1;

    invoke-direct {v2, p0, v0}, Lcom/parrot/freeflight/core/BitmapCache$1;-><init>(Lcom/parrot/freeflight/core/BitmapCache;I)V

    iput-object v2, p0, Lcom/parrot/freeflight/core/BitmapCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/BitmapCache;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/BitmapCache;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/core/BitmapCache;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 21
    invoke-static {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/BitmapCache;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/BitmapCache;III)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/BitmapCache;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/BitmapCache;->generateBitmapKey(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/BitmapCache;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/BitmapCache;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/BitmapCache;->setViewBitmap(Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 168
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 169
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 170
    .local v4, "width":I
    const/4 v3, 0x1

    .line 172
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 174
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 175
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 179
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p2, :cond_1

    div-int v5, v1, v3

    if-le v5, p1, :cond_1

    .line 181
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 184
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method private static decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 153
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 154
    .restart local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 155
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 158
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/core/BitmapCache;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 161
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 163
    :cond_0
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private generateBitmapKey(III)Ljava/lang/String;
    .locals 5
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 52
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d_%d_%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setViewBitmap(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 92
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    :goto_0
    return-void

    .line 95
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/parrot/freeflight/core/BitmapCache;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/core/BitmapCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/core/BitmapCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 113
    return-void
.end method

.method public getBitmap(III)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/BitmapCache;->generateBitmapKey(III)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "imageKey":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/core/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 105
    iget-object v2, p0, Lcom/parrot/freeflight/core/BitmapCache;->mResources:Landroid/content/res/Resources;

    invoke-static {v2, p1, p2, p3}, Lcom/parrot/freeflight/core/BitmapCache;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    invoke-virtual {p0, v1, v0}, Lcom/parrot/freeflight/core/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 108
    :cond_0
    return-object v0
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/core/BitmapCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public loadBitmap(ILandroid/view/View;)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/parrot/freeflight/core/BitmapCache;->loadBitmap(ILandroid/view/View;II)V

    .line 77
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/parrot/freeflight/core/BitmapCache$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/parrot/freeflight/core/BitmapCache$2;-><init>(Lcom/parrot/freeflight/core/BitmapCache;ILandroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public loadBitmap(ILandroid/view/View;II)V
    .locals 7
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "desiredWidth"    # I
    .param p4, "desiredHeight"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p3, p4}, Lcom/parrot/freeflight/core/BitmapCache;->generateBitmapKey(III)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "imageKey":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/core/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0, p2, v0}, Lcom/parrot/freeflight/core/BitmapCache;->setViewBitmap(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v2, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;-><init>(Lcom/parrot/freeflight/core/BitmapCache;Landroid/view/View;II)V

    .line 86
    .local v2, "task":Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/BitmapCache$BitmapWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
