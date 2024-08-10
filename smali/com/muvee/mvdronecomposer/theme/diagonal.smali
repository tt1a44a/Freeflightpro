.class public Lcom/muvee/mvdronecomposer/theme/diagonal;
.super Ljava/lang/Object;
.source "diagonal.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static d:F

.field private static e:I

.field private static f:I

.field private static g:F

.field private static h:I

.field private static i:I

.field private static j:F

.field private static k:I

.field private static l:I

.field private static m:F

.field private static n:I

.field private static o:I

.field private static p:F

.field private static q:I

.field private static r:I

.field private static s:I

.field private static t:I

.field private static u:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x12c

    const/16 v4, 0x49

    const/16 v3, 0x38

    const/high16 v2, 0x422c0000    # 43.0f

    const/high16 v1, 0x41f00000    # 30.0f

    .line 54
    const-class v0, Lcom/muvee/mvdronecomposer/theme/diagonal;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    .line 56
    const/16 v0, 0x5f

    sput v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->b:I

    .line 57
    const/16 v0, 0x3c0

    sput v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->c:I

    .line 58
    const/high16 v0, 0x42700000    # 60.0f

    sput v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->d:F

    .line 59
    sput v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->e:I

    .line 60
    const/16 v0, 0x38e

    sput v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->f:I

    .line 61
    sput v2, Lcom/muvee/mvdronecomposer/theme/diagonal;->g:F

    .line 62
    sput v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->h:I

    .line 63
    const/16 v0, 0x38e

    sput v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->i:I

    .line 64
    sput v2, Lcom/muvee/mvdronecomposer/theme/diagonal;->j:F

    .line 65
    sput v3, Lcom/muvee/mvdronecomposer/theme/diagonal;->k:I

    .line 66
    const/16 v0, 0x1bc

    sput v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->l:I

    .line 67
    sput v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->m:F

    .line 68
    sput v3, Lcom/muvee/mvdronecomposer/theme/diagonal;->n:I

    .line 69
    const/16 v0, 0x186

    sput v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->o:I

    .line 70
    sput v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->p:F

    .line 71
    sput v5, Lcom/muvee/mvdronecomposer/theme/diagonal;->q:I

    .line 72
    sput v5, Lcom/muvee/mvdronecomposer/theme/diagonal;->r:I

    .line 74
    const/16 v0, 0x60

    sput v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->s:I

    .line 75
    const/16 v0, 0x37

    sput v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->t:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertKphToMs(F)Ljava/lang/String;
    .locals 4

    .prologue
    .line 2475
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    div-int/lit16 v0, v0, 0xe10

    int-to-float v0, v0

    .line 2476
    const-string v1, "%dm/s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertSecondsToHMmSs(J)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v2, 0x3c

    .line 2468
    rem-long v0, p0, v2

    .line 2469
    div-long v0, p0, v2

    rem-long/2addr v0, v2

    .line 2470
    const-wide/16 v2, 0xe10

    div-long v2, p0, v2

    const-wide/16 v4, 0x18

    rem-long/2addr v2, v4

    .line 2471
    const-string v4, "%dh%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmapFromURL(IIZ)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2565
    sget v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 2566
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    const-string v2, "::getBitmapFromURL:: location data wrong!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2586
    :cond_0
    :goto_0
    return-object v0

    .line 2571
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/muvee/mvdronecomposer/theme/diagonal;->getMapUrl(II)Ljava/lang/String;

    move-result-object v0

    .line 2572
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::getBitmapFromURL:: mapUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2574
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 2575
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 2576
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 2577
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 2578
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2579
    if-eqz p2, :cond_0

    .line 2580
    invoke-static {v0}, Lcom/muvee/mvdronecomposer/theme/diagonal;->getCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2584
    :catch_0
    move-exception v0

    .line 2585
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 2586
    goto :goto_0
.end method

.method public static getCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2593
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 2594
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2599
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2602
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 2603
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2604
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v4, v6, v6, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2608
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v1, v5, :cond_1

    .line 2609
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 2614
    :goto_1
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2615
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 2616
    const v5, -0xbdbdbe

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2617
    invoke-virtual {v2, v1, v1, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2618
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2619
    invoke-virtual {v2, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2621
    return-object v0

    .line 2596
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 2611
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    goto :goto_1
.end method

.method public static getEffectDescriptions(Lcom/muvee/mvdronecomposer/SettingsParam;JJ)[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;
    .locals 25

    .prologue
    .line 451
    const/4 v3, 0x1

    .line 453
    const/4 v2, 0x0

    .line 454
    sget-boolean v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_IN_EFFECT_WHEN_START:Z

    if-eqz v4, :cond_0

    .line 455
    const/4 v3, 0x2

    .line 456
    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->VIDEO_FADE_IN_DURATION:I

    .line 459
    :cond_0
    const/4 v4, 0x0

    .line 460
    sget-boolean v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_OUT_EFFECT_WHEN_CLOSE:Z

    if-eqz v5, :cond_2c

    .line 461
    add-int/lit8 v4, v3, 0x1

    .line 462
    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->VIDEO_FADE_OUT_DURATION:I

    move v5, v3

    .line 465
    :goto_0
    const/4 v3, 0x0

    .line 466
    sub-long v6, p1, p3

    int-to-long v8, v2

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1770

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 467
    const/4 v3, 0x1

    .line 468
    add-int/lit8 v4, v4, 0x1

    .line 471
    :cond_1
    sget-object v6, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "::getEffectDescriptions:: effectNum: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-array v6, v4, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    .line 475
    const/4 v4, -0x1

    .line 478
    sget-boolean v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_IN_EFFECT_WHEN_START:Z

    if-eqz v7, :cond_2

    .line 480
    const/4 v4, 0x0

    .line 483
    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v7, v6, v4

    .line 484
    aget-object v7, v6, v4

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 485
    aget-object v7, v6, v4

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 487
    const/16 v7, 0xc

    .line 488
    aget-object v8, v6, v4

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v7, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 490
    const/4 v7, 0x0

    .line 491
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 492
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 493
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 494
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 495
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 496
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, -0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 497
    const/4 v7, 0x1

    .line 498
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 499
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_RGBColorR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 500
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 501
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 502
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 503
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 504
    const/4 v7, 0x2

    .line 505
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 506
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorIntensityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 507
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 508
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 509
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 510
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/16 v8, 0x64

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 511
    const/4 v7, 0x3

    .line 512
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 513
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorLayer:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 514
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 515
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 516
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 517
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x2

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 518
    const/4 v7, 0x4

    .line 519
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 520
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 521
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 522
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 523
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 524
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 525
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/16 v8, 0x1f4

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 526
    const/4 v7, 0x5

    .line 527
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 528
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 529
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 530
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 531
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 532
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 533
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/16 v8, 0x1f4

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 534
    const/4 v7, 0x6

    .line 535
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 536
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 537
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 538
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 539
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 540
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 541
    const/4 v7, 0x7

    .line 542
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 543
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 544
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 545
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 546
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 547
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 548
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/16 v8, 0x3e8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 549
    const/16 v7, 0x8

    .line 550
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 551
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 552
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 553
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 554
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 555
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 556
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/16 v8, 0x3e8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 557
    const/16 v7, 0x9

    .line 558
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 559
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 560
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x2

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 561
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 562
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 563
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 564
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x64

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 565
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 566
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0x3e8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 567
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 568
    const/16 v7, 0xa

    .line 569
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 570
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 571
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 572
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 573
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 574
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/16 v8, 0x8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 575
    const/16 v7, 0xb

    .line 576
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 577
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 578
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 579
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 580
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 581
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 584
    :cond_2
    sget-boolean v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_OUT_EFFECT_WHEN_CLOSE:Z

    if-eqz v7, :cond_3

    .line 586
    add-int/lit8 v4, v4, 0x1

    .line 589
    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v7, v6, v4

    .line 590
    aget-object v7, v6, v4

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 591
    aget-object v7, v6, v4

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    sub-long v10, p1, p3

    int-to-long v12, v5

    sub-long/2addr v10, v12

    long-to-int v5, v10

    sub-long v10, p1, p3

    long-to-int v9, v10

    invoke-direct {v8, v5, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 593
    const/16 v5, 0xc

    .line 594
    aget-object v7, v6, v4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v5, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 596
    const/4 v5, 0x0

    .line 597
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 598
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 599
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 600
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 601
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 602
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/4 v7, -0x1

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 603
    const/4 v5, 0x1

    .line 604
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 605
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_RGBColorR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 606
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 607
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 608
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 609
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/4 v7, 0x0

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 610
    const/4 v5, 0x2

    .line 611
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 612
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorIntensityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 613
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 614
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 615
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 616
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/16 v7, 0x64

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 617
    const/4 v5, 0x3

    .line 618
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 619
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorLayer:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 620
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 621
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 622
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 623
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/4 v7, 0x2

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 624
    const/4 v5, 0x4

    .line 625
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 626
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 627
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 628
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 629
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 630
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 631
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/16 v7, 0x1f4

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 632
    const/4 v5, 0x5

    .line 633
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 634
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 635
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 636
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 637
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 638
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 639
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/16 v7, 0x1f4

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 640
    const/4 v5, 0x6

    .line 641
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 642
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 643
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 644
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 645
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 646
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/4 v7, 0x1

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 647
    const/4 v5, 0x7

    .line 648
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 649
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 650
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 651
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 652
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 653
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 654
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/16 v7, 0x3e8

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 655
    const/16 v5, 0x8

    .line 656
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 657
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 658
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 659
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 660
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 661
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 662
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/16 v7, 0x3e8

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 663
    const/16 v5, 0x9

    .line 664
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 665
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 666
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x2

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 667
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 668
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 669
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 670
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 671
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x1

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 672
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/16 v8, 0x3e8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 673
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    const/16 v7, 0x64

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 674
    const/16 v5, 0xa

    .line 675
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 676
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 677
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 678
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 679
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 680
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/16 v7, 0x8

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 681
    const/16 v5, 0xb

    .line 682
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 683
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 684
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 685
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 686
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 687
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/4 v7, 0x0

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 690
    :cond_3
    if-eqz v3, :cond_2b

    .line 692
    add-int/lit8 v3, v4, 0x1

    .line 695
    sget-object v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "::getEffectDescriptions:: Flight data info++ effectNo: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v4, v6, v3

    .line 698
    aget-object v4, v6, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 699
    aget-object v4, v6, v3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    add-int/lit16 v7, v2, 0xc8

    add-int/lit16 v2, v2, 0x1450

    invoke-direct {v5, v7, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 701
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 702
    sget-object v4, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v4

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 703
    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 704
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v7, "/styles/diagonal/img_max_speed_shadow.png"

    invoke-direct {v4, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 706
    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 707
    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 708
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 709
    new-instance v5, Ljava/io/File;

    sget-object v7, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v8, "/styles/diagonal/img_max_speed_bg.png"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 711
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 712
    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 713
    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 714
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v9, "/styles/diagonal/txt_max_speed.png"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 716
    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 717
    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 718
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 719
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v10, "/styles/diagonal/img_location_bg.png"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 721
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 722
    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 723
    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 724
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v11, "/styles/diagonal/img_flight_data_bg.png"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 726
    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 727
    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 728
    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 729
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v12, "/styles/diagonal/img_line_bottom.png"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 731
    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 732
    sget-object v11, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v11

    iput v11, v10, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 733
    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v11, v10, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 734
    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v13, "/styles/diagonal/box_white.png"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 736
    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 737
    sget-object v12, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v12}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v12

    iput v12, v11, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 738
    new-instance v12, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v12, v11, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 739
    new-instance v12, Ljava/io/File;

    sget-object v13, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v14, "/styles/diagonal/img_line_diagonal.png"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 741
    new-instance v12, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v12}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 742
    sget-object v13, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v13}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v13

    iput v13, v12, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 743
    new-instance v13, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v13, v12, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 744
    new-instance v13, Ljava/io/File;

    sget-object v14, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v15, "/styles/diagonal/img_line_vertical.png"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 746
    new-instance v13, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v13}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 747
    sget-object v14, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v14}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v14

    iput v14, v13, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 748
    new-instance v14, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v14, v13, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 749
    new-instance v14, Ljava/io/File;

    sget-object v15, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v16, "/styles/diagonal/img_max_altitude_shadow.png"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 751
    new-instance v14, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v14}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 752
    sget-object v15, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v15}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v15

    iput v15, v14, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 753
    new-instance v15, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v15, v14, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 754
    new-instance v15, Ljava/io/File;

    sget-object v16, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v17, "/styles/diagonal/img_max_altitude_bg.png"

    invoke-direct/range {v15 .. v17}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 756
    new-instance v15, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v15}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 757
    sget-object v16, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual/range {v16 .. v16}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 758
    new-instance v16, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 759
    new-instance v16, Ljava/io/File;

    sget-object v17, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v18, "/styles/diagonal/txt_location.png"

    invoke-direct/range {v16 .. v18}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 761
    new-instance v16, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct/range {v16 .. v16}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 762
    sget-object v17, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID13:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual/range {v17 .. v17}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 763
    new-instance v17, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 764
    new-instance v17, Ljava/io/File;

    sget-object v18, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v19, "/styles/diagonal/txt_date.png"

    invoke-direct/range {v17 .. v19}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 766
    new-instance v17, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct/range {v17 .. v17}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 767
    sget-object v18, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID14:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual/range {v18 .. v18}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 768
    new-instance v18, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 769
    new-instance v18, Ljava/io/File;

    sget-object v19, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v20, "/styles/diagonal/txt_flight_time.png"

    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 771
    new-instance v18, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct/range {v18 .. v18}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 772
    sget-object v19, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID15:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual/range {v19 .. v19}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 773
    new-instance v19, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 774
    new-instance v19, Ljava/io/File;

    sget-object v20, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v21, "/styles/diagonal/txt_max_altitude.png"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 776
    new-instance v19, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct/range {v19 .. v19}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 777
    sget-object v20, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID16:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual/range {v20 .. v20}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 778
    new-instance v20, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 779
    new-instance v20, Ljava/io/File;

    sget-object v21, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v22, "/styles/diagonal/img_map_trace_outer_ring.png"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 781
    new-instance v20, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct/range {v20 .. v20}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 782
    sget-object v21, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID17:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual/range {v21 .. v21}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 783
    new-instance v21, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 784
    new-instance v21, Ljava/io/File;

    sget-object v22, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v23, "/styles/diagonal/img_map_trace_inner_ring.png"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 786
    new-instance v21, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct/range {v21 .. v21}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 787
    sget-object v22, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID18:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual/range {v22 .. v22}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 788
    new-instance v22, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v22 .. v24}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 789
    new-instance v22, Ljava/io/File;

    sget-object v23, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v24, "/styles/diagonal/img_map_trace.png"

    invoke-direct/range {v22 .. v24}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 791
    aget-object v22, v6, v3

    const/16 v23, 0x12

    move/from16 v0, v23

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v2, v23, v24

    const/4 v2, 0x1

    aput-object v4, v23, v2

    const/4 v2, 0x2

    aput-object v5, v23, v2

    const/4 v2, 0x3

    aput-object v7, v23, v2

    const/4 v2, 0x4

    aput-object v8, v23, v2

    const/4 v2, 0x5

    aput-object v9, v23, v2

    const/4 v2, 0x6

    aput-object v10, v23, v2

    const/4 v2, 0x7

    aput-object v11, v23, v2

    const/16 v2, 0x8

    aput-object v12, v23, v2

    const/16 v2, 0x9

    aput-object v13, v23, v2

    const/16 v2, 0xa

    aput-object v14, v23, v2

    const/16 v2, 0xb

    aput-object v15, v23, v2

    const/16 v2, 0xc

    aput-object v16, v23, v2

    const/16 v2, 0xd

    aput-object v17, v23, v2

    const/16 v2, 0xe

    aput-object v18, v23, v2

    const/16 v2, 0xf

    aput-object v19, v23, v2

    const/16 v2, 0x10

    aput-object v20, v23, v2

    const/16 v2, 0x11

    aput-object v21, v23, v2

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->resourceList:[Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    .line 797
    const/16 v2, 0x83

    .line 798
    aget-object v4, v6, v3

    new-array v2, v2, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v2, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 801
    const/4 v2, 0x0

    .line 802
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 803
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 804
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 805
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 806
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 807
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 808
    const/4 v2, 0x1

    .line 809
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 810
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 811
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 812
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 813
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 814
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 815
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 816
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0xa6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 817
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 818
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xdc

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 819
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xa6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 820
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 821
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x10e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 822
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x144

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 823
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 824
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 825
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x144

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 826
    const/4 v2, 0x2

    .line 827
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 828
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 829
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 830
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 831
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 832
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 833
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 834
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x98

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 835
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 836
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xdc

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 837
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x98

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 838
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 839
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x10e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 840
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x1b5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 841
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 842
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 843
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x1b5

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 844
    const/4 v2, 0x3

    .line 845
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 846
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 847
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 848
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 849
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 850
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 851
    const/4 v2, 0x4

    .line 852
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 853
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 854
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 855
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 856
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 857
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 858
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xe7

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 859
    const/4 v2, 0x5

    .line 860
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 861
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 862
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 863
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 864
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 865
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 866
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x34

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 867
    const/4 v2, 0x6

    .line 868
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 869
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 870
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 871
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 872
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 873
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 874
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 875
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 876
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xdb

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 877
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 878
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 879
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xdc

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 881
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 885
    :goto_1
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 886
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 887
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 888
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 894
    :goto_2
    const/4 v2, 0x7

    .line 895
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 896
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 897
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 898
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 899
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 900
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 901
    const/16 v2, 0x8

    .line 902
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 903
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 904
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 905
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 906
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 907
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 908
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 909
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0xa5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 910
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 911
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 912
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xa5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 913
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 914
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x10e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 915
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x143

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 916
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 917
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 918
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x143

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 919
    const/16 v2, 0x9

    .line 920
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 921
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 922
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 923
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 924
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 925
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 926
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 927
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x9b

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 928
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 929
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 930
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x9b

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 931
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 932
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x10e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 933
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x1b8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 934
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 935
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 936
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x1b8

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 937
    const/16 v2, 0xa

    .line 938
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 939
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 940
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 941
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 942
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 943
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 944
    const/16 v2, 0xb

    .line 945
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 946
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 947
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 948
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 949
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 950
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 951
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xe7

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 952
    const/16 v2, 0xc

    .line 953
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 954
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 955
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 956
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 957
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 958
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 959
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x34

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 960
    const/16 v2, 0xd

    .line 961
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 962
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 963
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 964
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 965
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 966
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 967
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 968
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 969
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xd1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 970
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 971
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 972
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 973
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 974
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 978
    :goto_3
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 979
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 981
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 987
    :goto_4
    const/16 v2, 0xe

    .line 988
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 989
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 990
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 991
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 992
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 993
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 994
    const/16 v2, 0xf

    .line 995
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 996
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 997
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 998
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 999
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1000
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1001
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1002
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0xa5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1003
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1004
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1005
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xa5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1006
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1007
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x10e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1008
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x143

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1009
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1010
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1011
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x143

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1012
    const/16 v2, 0x10

    .line 1013
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1014
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1015
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1016
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1017
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1018
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1019
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1020
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x9b

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1021
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1022
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1023
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x9b

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1024
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1025
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x10e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1026
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x1b8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1027
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1028
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1029
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x1b8

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1030
    const/16 v2, 0x11

    .line 1031
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1032
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1033
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1034
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1035
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1036
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1037
    const/16 v2, 0x12

    .line 1038
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1039
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1040
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1041
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1042
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1043
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1044
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xe7

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1045
    const/16 v2, 0x13

    .line 1046
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1047
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1048
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1049
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1050
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1051
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1052
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x34

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1053
    const/16 v2, 0x14

    .line 1054
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1055
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1056
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1057
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1058
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1059
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1060
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1061
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1062
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xd1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1063
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1064
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1065
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1066
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1067
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1071
    :goto_5
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1072
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1073
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1074
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1080
    :goto_6
    const/16 v2, 0x15

    .line 1081
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1082
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1083
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1084
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1085
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1086
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1087
    const/16 v2, 0x16

    .line 1088
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1089
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1090
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1091
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1092
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1093
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1094
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1095
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, -0xfa

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1096
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1097
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x50

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1098
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, -0xfa

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1099
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1100
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x8c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1101
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xfa

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1102
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1103
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1104
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0xfa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1105
    const/16 v2, 0x17

    .line 1106
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1107
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1108
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1109
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1110
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1111
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1112
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1113
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xad

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1114
    const/16 v2, 0x18

    .line 1115
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1116
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1117
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1118
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1119
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1120
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1121
    const/16 v2, 0x19

    .line 1122
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1123
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1124
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1125
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1126
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1127
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1128
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x1f4

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1129
    const/16 v2, 0x1a

    .line 1130
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1131
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1132
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1133
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1134
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1135
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1136
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x58

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1137
    const/16 v2, 0x1b

    .line 1138
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1139
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1140
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1141
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1142
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1143
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v4

    if-nez v4, :cond_4

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_15

    .line 1144
    :cond_4
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1150
    :goto_7
    const/16 v2, 0x1c

    .line 1151
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1152
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1153
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1154
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1155
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1156
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1157
    const/16 v2, 0x1d

    .line 1158
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1159
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1160
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1161
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1162
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1163
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1164
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1165
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, -0xf0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1166
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1167
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x50

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1168
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, -0xf0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1169
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1170
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x8c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1171
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xf0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1172
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1173
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1174
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0xf0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1175
    const/16 v2, 0x1e

    .line 1176
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1177
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1178
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1179
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1180
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1181
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1182
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x5e

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1183
    const/16 v2, 0x1f

    .line 1184
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1185
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1186
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1187
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1188
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1189
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1190
    const/16 v2, 0x20

    .line 1191
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1192
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1193
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1194
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1195
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1196
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1197
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x1da

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1198
    const/16 v2, 0x21

    .line 1199
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1200
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1201
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1202
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1203
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1204
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1205
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x44

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1206
    const/16 v2, 0x22

    .line 1207
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1208
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1209
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1210
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1211
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1212
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v4

    if-nez v4, :cond_5

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    .line 1213
    :cond_5
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1219
    :goto_8
    const/16 v2, 0x23

    .line 1220
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1221
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1222
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1223
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1224
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1225
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1226
    const/16 v2, 0x24

    .line 1227
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1228
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1229
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1230
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1231
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1232
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1233
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1234
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, -0xff

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1235
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1236
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x50

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1237
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, -0xff

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1238
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1239
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x78

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1240
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xff

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1241
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1242
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1243
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0xff

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1244
    const/16 v2, 0x25

    .line 1245
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1246
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1247
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1248
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1249
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1250
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1251
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x82

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1252
    const/16 v2, 0x26

    .line 1253
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1254
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1255
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1256
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1257
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1258
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1259
    const/16 v2, 0x27

    .line 1260
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1261
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1262
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1263
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1264
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1265
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1266
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x1cc

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1267
    const/16 v2, 0x28

    .line 1268
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1269
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1270
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1271
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1272
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1273
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1274
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x2

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1275
    const/16 v2, 0x29

    .line 1276
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1277
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1278
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1279
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1280
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1281
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v4

    if-nez v4, :cond_6

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_17

    .line 1282
    :cond_6
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1288
    :goto_9
    const/16 v2, 0x2a

    .line 1289
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1290
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1291
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1292
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1293
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1294
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1295
    const/16 v2, 0x2b

    .line 1296
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1297
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1298
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1299
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1300
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1301
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1302
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x32

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1303
    const/16 v2, 0x2c

    .line 1304
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1305
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1306
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1307
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1308
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1309
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1310
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x82

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1311
    const/16 v2, 0x2d

    .line 1312
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1313
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1314
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1315
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1316
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1317
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1318
    const/16 v2, 0x2e

    .line 1319
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1320
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1321
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1322
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1323
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1324
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1325
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xe

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1326
    const/16 v2, 0x2f

    .line 1327
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1328
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1329
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1330
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1331
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1332
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1333
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x18

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1334
    const/16 v2, 0x30

    .line 1335
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1336
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1337
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1338
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1339
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1340
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1341
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1342
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1343
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x9

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1344
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1345
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1346
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xa

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1347
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v4

    if-nez v4, :cond_7

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_18

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1348
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1352
    :goto_a
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1353
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1354
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v4

    if-nez v4, :cond_8

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_19

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1355
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1361
    :goto_b
    const/16 v2, 0x31

    .line 1362
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1363
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1364
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1365
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1366
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1367
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1368
    const/16 v2, 0x32

    .line 1369
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1370
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1371
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1372
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1373
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1374
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1375
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1376
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x32

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1377
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1378
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1379
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x32

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1380
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1381
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x10e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1382
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x91

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1383
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1384
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1385
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x91

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1386
    const/16 v2, 0x33

    .line 1387
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1388
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1389
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1390
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1391
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1392
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1393
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1394
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x82

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1395
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1396
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1397
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x82

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1398
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1399
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x10e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1400
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x12c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1401
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1402
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1403
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x12c

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1404
    const/16 v2, 0x34

    .line 1405
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1406
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1407
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1408
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1409
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1410
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1411
    const/16 v2, 0x35

    .line 1412
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1413
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1414
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1415
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1416
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1417
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1418
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1419
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1420
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1421
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1422
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1423
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1424
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x10e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1425
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xfb

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1426
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1427
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1428
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0xfb

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1429
    const/16 v2, 0x36

    .line 1430
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1431
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1432
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1433
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1434
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1435
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1436
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x2

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1437
    const/16 v2, 0x37

    .line 1438
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1439
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1440
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1441
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1442
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1443
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1444
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1445
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1446
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xd1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1447
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1448
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1449
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1450
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1451
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1455
    :goto_c
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1456
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1457
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1458
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1462
    :goto_d
    const/16 v2, 0x38

    .line 1463
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1464
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_RotationDegreesZR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1465
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1466
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1467
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1468
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x87

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1471
    const/16 v2, 0x39

    .line 1472
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1473
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1474
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1475
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1476
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1477
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1478
    const/16 v2, 0x3a

    .line 1479
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1480
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1481
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1482
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1483
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1484
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1485
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xee

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1486
    const/16 v2, 0x3b

    .line 1487
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1488
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1489
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1490
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1491
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1492
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1493
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1494
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x1c2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1495
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1496
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1497
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x1c2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1498
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1499
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x154

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1500
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x29e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1501
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1502
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1503
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x29e

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1504
    const/16 v2, 0x3c

    .line 1505
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1506
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1507
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1508
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1509
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1510
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1511
    const/16 v2, 0x3d

    .line 1512
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1513
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1514
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1515
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1516
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1517
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1518
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1519
    const/16 v2, 0x3e

    .line 1520
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1521
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1522
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1523
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1524
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1525
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1526
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1527
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1528
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1529
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1530
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1531
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1532
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x154

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1533
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x1c2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1534
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1535
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1536
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x1c2

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1537
    const/16 v2, 0x3f

    .line 1538
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1539
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1540
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1541
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1542
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1543
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1544
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1545
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1546
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x117

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1547
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1548
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1549
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1550
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1551
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1555
    :goto_e
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1556
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1557
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1558
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1564
    :goto_f
    const/16 v2, 0x40

    .line 1565
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1566
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1567
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1568
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1569
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1570
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1571
    const/16 v2, 0x41

    .line 1572
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1573
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1574
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1575
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1576
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1577
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1578
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x154

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1579
    const/16 v2, 0x42

    .line 1580
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1581
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1582
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1583
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1584
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1585
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1586
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1587
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x1f1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1588
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1589
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1590
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x1f1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1591
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1592
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x154

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1593
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x36d

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1594
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1595
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1596
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x36d

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1597
    const/16 v2, 0x43

    .line 1598
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1599
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1600
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1601
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1602
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1603
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1604
    const/16 v2, 0x44

    .line 1605
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1606
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1607
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1608
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1609
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1610
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1611
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xcb

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1612
    const/16 v2, 0x45

    .line 1613
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1614
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1615
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1616
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1617
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1618
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1619
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x34

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1620
    const/16 v2, 0x46

    .line 1621
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1622
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1623
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1624
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1625
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1626
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1627
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1628
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1629
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x117

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1630
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1631
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1632
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1633
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1634
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1638
    :goto_10
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1639
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1640
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1641
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1647
    :goto_11
    const/16 v2, 0x47

    .line 1648
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1649
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1650
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1651
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1652
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1653
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1654
    const/16 v2, 0x48

    .line 1655
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1656
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1657
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1658
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1659
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1660
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1661
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x153

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1662
    const/16 v2, 0x49

    .line 1663
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1664
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1665
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1666
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1667
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1668
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1669
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1670
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x1f4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1671
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1672
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1673
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x1f4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1674
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1675
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x154

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1676
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x370

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1677
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1678
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1679
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x370

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1680
    const/16 v2, 0x4a

    .line 1681
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1682
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1683
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1684
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1685
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1686
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1687
    const/16 v2, 0x4b

    .line 1688
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1689
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1690
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1691
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1692
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1693
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1694
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xcb

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1695
    const/16 v2, 0x4c

    .line 1696
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1697
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1698
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1699
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1700
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1701
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1702
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x34

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1703
    const/16 v2, 0x4d

    .line 1704
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1705
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1706
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1707
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1708
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1709
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1710
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1711
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1712
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x117

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1713
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1714
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1715
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1716
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1717
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1721
    :goto_12
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1722
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1723
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1724
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1730
    :goto_13
    const/16 v2, 0x4e

    .line 1731
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1732
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1733
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1734
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1735
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1736
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1737
    const/16 v2, 0x4f

    .line 1738
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1739
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1740
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1741
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1742
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1743
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1744
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1745
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, -0xe1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1746
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1747
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x50

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1748
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, -0xe1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1749
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1750
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xc8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1751
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xe1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1752
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1753
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1754
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0xe1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1755
    const/16 v2, 0x50

    .line 1756
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1757
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1758
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1759
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1760
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1761
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1762
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xb4

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1763
    const/16 v2, 0x51

    .line 1764
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1765
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1766
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1767
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1768
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1769
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1770
    const/16 v2, 0x52

    .line 1771
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1772
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1773
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1774
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1775
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1776
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1777
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x1f4

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1778
    const/16 v2, 0x53

    .line 1779
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1780
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1781
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1782
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1783
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1784
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1785
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x58

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1786
    const/16 v2, 0x54

    .line 1787
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1788
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1789
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1790
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1791
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1792
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v4

    if-nez v4, :cond_9

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_22

    .line 1793
    :cond_9
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1799
    :goto_14
    const/16 v2, 0x55

    .line 1800
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1801
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR13:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1802
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1803
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1804
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1805
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1806
    const/16 v2, 0x56

    .line 1807
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1808
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR13:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1809
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1810
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1811
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1812
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1813
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xd2

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1814
    const/16 v2, 0x57

    .line 1815
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1816
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR13:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1817
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1818
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1819
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1820
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1821
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1822
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0xa0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1823
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1824
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x96

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1825
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xa0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1826
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1827
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xc8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1828
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1829
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1830
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x230

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1831
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1832
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1833
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x258

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1834
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0xa0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1835
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1836
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1837
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0xa0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1838
    const/16 v2, 0x58

    .line 1839
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1840
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR13:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1841
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1842
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1843
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1844
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1845
    const/16 v2, 0x59

    .line 1846
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1847
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR13:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1848
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1849
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1850
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1851
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1852
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x1da

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1853
    const/16 v2, 0x5a

    .line 1854
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1855
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR13:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1856
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1857
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1858
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1859
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1860
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x44

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1861
    const/16 v2, 0x5b

    .line 1862
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1863
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR13:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1864
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1865
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1866
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1867
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v4

    if-nez v4, :cond_a

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_23

    .line 1868
    :cond_a
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1872
    :goto_15
    const/16 v2, 0x5c

    .line 1873
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1874
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY013:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1875
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1876
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1877
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1878
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1879
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1880
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1881
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x96

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1882
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1883
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1884
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xc8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1885
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1886
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1887
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x230

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1888
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1889
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1890
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x258

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1891
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1892
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1893
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1894
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1897
    const/16 v2, 0x5d

    .line 1898
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1899
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR14:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1900
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1901
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1902
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1903
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1904
    const/16 v2, 0x5e

    .line 1905
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1906
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR14:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1907
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1908
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1909
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1910
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1911
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xd2

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1912
    const/16 v2, 0x5f

    .line 1913
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1914
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR14:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1915
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1916
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1917
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1918
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1919
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1920
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0xa0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1921
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1922
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x26c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1923
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xa0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1924
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1925
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x29e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1926
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1927
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1928
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1929
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1930
    const/16 v2, 0x60

    .line 1931
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1932
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR14:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1933
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1934
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1935
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1936
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1937
    const/16 v2, 0x61

    .line 1938
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1939
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR14:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1940
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1941
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1942
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1943
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1944
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x1da

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1945
    const/16 v2, 0x62

    .line 1946
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1947
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR14:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1948
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1949
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1950
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1951
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1952
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x44

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1953
    const/16 v2, 0x63

    .line 1954
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1955
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR14:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1956
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1957
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1958
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1959
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v4

    if-nez v4, :cond_b

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    .line 1960
    :cond_b
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1964
    :goto_16
    const/16 v2, 0x64

    .line 1965
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1966
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY014:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1967
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1968
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1969
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1970
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1971
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1972
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1973
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x26c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1974
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1975
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1976
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x29e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1977
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1978
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1979
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1980
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1983
    const/16 v2, 0x65

    .line 1984
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1985
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR15:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1986
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1987
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1988
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1989
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1990
    const/16 v2, 0x66

    .line 1991
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1992
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR15:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1993
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1994
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1995
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1996
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1997
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x152

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1998
    const/16 v2, 0x67

    .line 1999
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2000
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR15:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2001
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2002
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2003
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2004
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2005
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2006
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x1f4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2007
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2008
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2009
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x1f4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2010
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2011
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x154

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2012
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x370

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2013
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2014
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2015
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x370

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2016
    const/16 v2, 0x68

    .line 2017
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2018
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR15:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2019
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2020
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2021
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2022
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2023
    const/16 v2, 0x69

    .line 2024
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2025
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR15:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2026
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2027
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2028
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2029
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2030
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xcb

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2031
    const/16 v2, 0x6a

    .line 2032
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2033
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR15:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2034
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2035
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2036
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2037
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2038
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x34

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2039
    const/16 v2, 0x6b

    .line 2040
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2041
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR15:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2042
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2043
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2044
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2045
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2046
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2047
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2048
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x117

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2049
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2050
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2051
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2052
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 2053
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2057
    :goto_17
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2058
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2059
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2060
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2066
    :goto_18
    const/16 v2, 0x6c

    .line 2067
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2068
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR16:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2069
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2070
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2071
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2072
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2073
    const/16 v2, 0x6d

    .line 2074
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2075
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR16:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2076
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2077
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2078
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2079
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2080
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x8c

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2081
    const/16 v2, 0x6e

    .line 2082
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2083
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR16:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2084
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2085
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2086
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2087
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2088
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xdc

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2089
    const/16 v2, 0x6f

    .line 2090
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2091
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR16:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2092
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2093
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2094
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2095
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2096
    const/16 v2, 0x70

    .line 2097
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2098
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR16:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2099
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2100
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2101
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2102
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2103
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2104
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2105
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2106
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x9

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2107
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2108
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2109
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xa

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2110
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x11

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2111
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2112
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x50

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2113
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x96

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2114
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2115
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x82

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2116
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0xa7

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2117
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2118
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2119
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0xa7

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2120
    const/16 v2, 0x71

    .line 2121
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2122
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR16:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2123
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2124
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2125
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2126
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2127
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2128
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2129
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2130
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x9

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2131
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2132
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2133
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xa

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2134
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x1e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2135
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2136
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x50

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2137
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x10a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2138
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2139
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x82

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2140
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x128

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2141
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2142
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2143
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x128

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2144
    const/16 v2, 0x72

    .line 2145
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2146
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR16:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2147
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2148
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2149
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2150
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v4

    if-nez v4, :cond_c

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_27

    .line 2151
    :cond_c
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2157
    :goto_19
    const/16 v2, 0x73

    .line 2158
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2159
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR17:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2160
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2161
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2162
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2163
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2164
    const/16 v2, 0x74

    .line 2165
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2166
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR17:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2167
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2168
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2169
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2170
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2171
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x8c

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2172
    const/16 v2, 0x75

    .line 2173
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2174
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR17:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2175
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2176
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2177
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2178
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2179
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xdc

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2180
    const/16 v2, 0x76

    .line 2181
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2182
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR17:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2183
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2184
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2185
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2186
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2187
    const/16 v2, 0x77

    .line 2188
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2189
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR17:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2190
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2191
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2192
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2193
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2194
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2195
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2196
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2197
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x9

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2198
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2199
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2200
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xa

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2201
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x10

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2202
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2203
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x50

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2204
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x8c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2205
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2206
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x82

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2207
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x9c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2208
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2209
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2210
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x9c

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2211
    const/16 v2, 0x78

    .line 2212
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2213
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR17:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2214
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2215
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2216
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2217
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2218
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2219
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2220
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2221
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x9

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2222
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2223
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2224
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xa

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2225
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x1c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2226
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2227
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x50

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2228
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0xfa

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2229
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2230
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x82

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2231
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x116

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2232
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2233
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2234
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x116

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2235
    const/16 v2, 0x79

    .line 2236
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2237
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR17:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2238
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2239
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2240
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2241
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v4

    if-nez v4, :cond_d

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_28

    .line 2242
    :cond_d
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2248
    :goto_1a
    const/16 v2, 0x7a

    .line 2249
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2250
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR18:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2251
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2252
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2253
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2254
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2255
    const/16 v2, 0x7b

    .line 2256
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2257
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR18:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2258
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2259
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2260
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2261
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2262
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x8c

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2263
    const/16 v2, 0x7c

    .line 2264
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2265
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR18:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2266
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2267
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2268
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2269
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2270
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xdc

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2271
    const/16 v2, 0x7d

    .line 2272
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2273
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR18:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2274
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2275
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2276
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2277
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2278
    const/16 v2, 0x7e

    .line 2279
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2280
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR18:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2281
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2282
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2283
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2284
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2285
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2286
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2287
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2288
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x9

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2289
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2290
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2291
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xa

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2292
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x10

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2293
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2294
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x50

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2295
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x8c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2296
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2297
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x82

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2298
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x9c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2299
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2300
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2301
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x9c

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2302
    const/16 v2, 0x7f

    .line 2303
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2304
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR18:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2305
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2306
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2307
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2308
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2309
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2310
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2311
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2312
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x9

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2313
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2314
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2315
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xa

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2316
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x1c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2317
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2318
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x50

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2319
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0xfa

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2320
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2321
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x82

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2322
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x116

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2323
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2324
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2325
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x116

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2326
    const/16 v2, 0x80

    .line 2327
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2328
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR18:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2329
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2330
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2331
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2332
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v4

    if-nez v4, :cond_e

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_29

    .line 2333
    :cond_e
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2338
    :goto_1b
    const/16 v2, 0x81

    .line 2339
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2340
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2341
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2342
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2343
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2344
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x8

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2346
    const/16 v2, 0x82

    .line 2347
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2348
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2349
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2350
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2351
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2352
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    move v2, v3

    .line 2356
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    .line 2357
    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v3, v6, v2

    .line 2358
    aget-object v3, v6, v2

    sget-object v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_GRAPHIC_OVERLAY_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 2359
    aget-object v3, v6, v2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v5, 0x0

    sub-long v8, p1, p3

    long-to-int v7, v8

    invoke-direct {v4, v5, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 2361
    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 2362
    sget-object v4, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_GraphicID:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v4

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 2363
    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 2364
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getWatermarkPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 2366
    sget-object v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "::getEffectDescriptions:: resourcePath: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    aget-object v4, v6, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    const/4 v7, 0x0

    aput-object v3, v5, v7

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->resourceList:[Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    .line 2370
    aget-object v3, v6, v2

    const/16 v4, 0xa

    new-array v4, v4, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2373
    const/4 v3, 0x0

    .line 2374
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2375
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CoordX:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2376
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2377
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2378
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2379
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosX:I

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2380
    const/4 v3, 0x1

    .line 2381
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2382
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CoordY:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2383
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2384
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2385
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2386
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosY:I

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2387
    const/4 v3, 0x2

    .line 2388
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2389
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_ObjectWidth:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2390
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2391
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2392
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2393
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkWidth:I

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2394
    const/4 v3, 0x3

    .line 2395
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2396
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_ObjectHeight:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2397
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2398
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2399
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2400
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkHeight:I

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2401
    const/4 v3, 0x4

    .line 2402
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2403
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_GraphicID:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2404
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2405
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2406
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2407
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2408
    const/4 v3, 0x5

    .line 2409
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableWatermark()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2410
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2411
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_Opacity:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2412
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2413
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2414
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2415
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2434
    :goto_1d
    const/4 v3, 0x6

    .line 2435
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2436
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CanvasWidth:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2437
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2438
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2439
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2440
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x780

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2441
    const/4 v3, 0x7

    .line 2442
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2443
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CanvasHeight:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2444
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2445
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2446
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2447
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x438

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2448
    const/16 v3, 0x8

    .line 2449
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2450
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_TranslateZ:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2451
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2452
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2453
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2454
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0xa

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2456
    const/16 v3, 0x9

    .line 2457
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2458
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2459
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2460
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2461
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2462
    aget-object v2, v6, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2464
    return-object v6

    .line 883
    :cond_f
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_1

    .line 890
    :cond_10
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_2

    .line 976
    :cond_11
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_3

    .line 983
    :cond_12
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_4

    .line 1069
    :cond_13
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_5

    .line 1076
    :cond_14
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_6

    .line 1146
    :cond_15
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_7

    .line 1215
    :cond_16
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_8

    .line 1284
    :cond_17
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_9

    .line 1350
    :cond_18
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_a

    .line 1357
    :cond_19
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_b

    .line 1453
    :cond_1a
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_c

    .line 1460
    :cond_1b
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_d

    .line 1553
    :cond_1c
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_e

    .line 1560
    :cond_1d
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_f

    .line 1636
    :cond_1e
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_10

    .line 1643
    :cond_1f
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_11

    .line 1719
    :cond_20
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_12

    .line 1726
    :cond_21
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_13

    .line 1795
    :cond_22
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_14

    .line 1870
    :cond_23
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_15

    .line 1962
    :cond_24
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_16

    .line 2055
    :cond_25
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_17

    .line 2062
    :cond_26
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_18

    .line 2153
    :cond_27
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_19

    .line 2244
    :cond_28
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_1a

    .line 2335
    :cond_29
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_1b

    .line 2417
    :cond_2a
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2418
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_Opacity:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2419
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2420
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2421
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2422
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2423
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2424
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2425
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getSegValueForFadeIn()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2426
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2427
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2428
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getSegValueForFadeOut()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2429
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2430
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2431
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2432
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_1d

    :cond_2b
    move v2, v4

    goto/16 :goto_1c

    :cond_2c
    move v5, v4

    move v4, v3

    goto/16 :goto_0
.end method

.method public static getMapUrl(II)Ljava/lang/String;
    .locals 26

    .prologue
    .line 2480
    sget-object v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::getMapUrl:: locationArray.size(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v6, v6, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", startIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", endIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->endIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    .line 2483
    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    .line 2484
    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    .line 2485
    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    .line 2490
    const-wide/16 v10, 0x0

    .line 2491
    const-wide/16 v8, 0x0

    .line 2492
    const-string v7, ""

    .line 2494
    const/4 v4, 0x1

    .line 2495
    const/4 v6, 0x0

    .line 2496
    sget-object v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v5, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v20, 0x28

    move/from16 v0, v20

    if-le v5, v0, :cond_0

    .line 2497
    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42200000    # 40.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 2498
    sget-object v5, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "::getMapUrl:: divideNum: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v5, v4

    .line 2501
    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    move/from16 v20, v4

    :goto_0
    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->endIndex:I

    move/from16 v0, v20

    if-gt v0, v4, :cond_1

    .line 2502
    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v22

    const-wide v24, -0x3fa9800000000000L    # -90.0

    cmpl-double v4, v22, v24

    if-ltz v4, :cond_2

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v22

    const-wide v24, 0x4056800000000000L    # 90.0

    cmpg-double v4, v22, v24

    if-gtz v4, :cond_2

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    .line 2503
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    const-wide v24, -0x3f99800000000000L    # -180.0

    cmpl-double v4, v22, v24

    if-ltz v4, :cond_2

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    const-wide v24, 0x4066800000000000L    # 180.0

    cmpg-double v4, v22, v24

    if-gtz v4, :cond_2

    .line 2505
    sget-object v21, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "::getMapUrl:: i: "

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v22, ", Lan: "

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v22, ", Long: "

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v22

    move-wide/from16 v0, v18

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    .line 2508
    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v22

    move-wide/from16 v0, v16

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    .line 2509
    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    .line 2510
    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 2512
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "|"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2513
    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v6, v4

    .line 2514
    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v22

    add-double v10, v10, v22

    .line 2515
    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    add-double v8, v8, v22

    .line 2517
    const/high16 v4, 0x421c0000    # 39.0f

    cmpl-float v4, v6, v4

    if-nez v4, :cond_2

    .line 2522
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->endIndex:I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->endIndex:I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2523
    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v6, v4

    .line 2524
    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->endIndex:I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    add-double v10, v10, v20

    .line 2525
    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->endIndex:I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    add-double v8, v8, v20

    .line 2527
    float-to-double v0, v6

    move-wide/from16 v20, v0

    div-double v10, v10, v20

    .line 2528
    float-to-double v0, v6

    move-wide/from16 v20, v0

    div-double v8, v8, v20

    .line 2530
    sget-object v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "::getMapUrl:: minLatitude: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", maxLatitude: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", minLongitude: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v20, ", maxLongitude: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    sget-object v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "::getMapUrl:: usedFlightNum: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", averageLatitude: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", averageLongitude: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    new-instance v4, Landroid/location/Location;

    const-string v6, "minLati"

    invoke-direct {v4, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2534
    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 2535
    invoke-virtual {v4, v14, v15}, Landroid/location/Location;->setLongitude(D)V

    .line 2536
    new-instance v6, Landroid/location/Location;

    const-string v7, "maxLati"

    invoke-direct {v6, v7}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2537
    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 2538
    invoke-virtual {v6, v14, v15}, Landroid/location/Location;->setLongitude(D)V

    .line 2539
    invoke-virtual {v4, v6}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    float-to-double v6, v4

    .line 2541
    new-instance v4, Landroid/location/Location;

    const-string v16, "minLong"

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2542
    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 2543
    invoke-virtual {v4, v14, v15}, Landroid/location/Location;->setLongitude(D)V

    .line 2544
    new-instance v14, Landroid/location/Location;

    const-string v15, "maxLong"

    invoke-direct {v14, v15}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2545
    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 2546
    invoke-virtual {v14, v12, v13}, Landroid/location/Location;->setLongitude(D)V

    .line 2547
    invoke-virtual {v4, v14}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    float-to-double v12, v4

    .line 2549
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    .line 2550
    const/4 v4, 0x1

    double-to-int v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    div-int/lit16 v0, v0, 0x190

    move/from16 v16, v0

    rsub-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2551
    sget-object v16, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "::getMapUrl:: distanceLatitude: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", distanceLongitude: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", distance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "m, zoomLevel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://maps.googleapis.com/maps/api/staticmap?&center="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&zoom="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&markers=color:blue|label:S|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    .line 2557
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&markers=color:red|label:E|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->endIndex:I

    .line 2558
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->endIndex:I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&path=color:0x0000ff|weight:3"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&key=AIzaSyAlWwgu8csr9lxovL-JzL9g8nAPe7n9aZA"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2553
    return-object v4

    :cond_2
    move v4, v6

    move-object v6, v7

    .line 2501
    add-int v7, v20, v5

    move/from16 v20, v7

    move-object v7, v6

    move v6, v4

    goto/16 :goto_0
.end method

.method public static makeResource(Landroid/content/Context;)V
    .locals 14

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 82
    invoke-static {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInternalAppCacheFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    .line 85
    const/high16 v0, 0x42700000    # 60.0f

    sput v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->d:F

    .line 87
    const-string v0, ""

    .line 88
    sget v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 89
    const-string v1, "Lat: %f, Long: %f"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 91
    :goto_0
    const-string v0, ""

    .line 92
    const-string v0, ""

    .line 93
    const-string v0, ""

    .line 94
    const-string v0, ""

    .line 95
    const-string v0, ""

    .line 97
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 98
    const/4 v0, -0x1

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    sget v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->d:F

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 104
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 106
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    const-string v2, "::makeResource:: geocoder.isPresent() false!!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    const/4 v2, 0x0

    .line 111
    const/4 v0, 0x0

    move v8, v0

    move-object v0, v2

    :goto_1
    const/16 v2, 0xa

    if-ge v8, v2, :cond_1

    .line 112
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 114
    sget-object v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::makeResource:: tried "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v8, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " times for getting location"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 120
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 121
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v7

    .line 122
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v0}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    .line 127
    sget-object v5, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "::makeResource:: featureName: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", locality: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", subThoroughfare: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", adminArea: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subAdminArea: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", countryName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :cond_2
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 153
    :goto_3
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v1

    sget v2, Lcom/muvee/mvdronecomposer/theme/diagonal;->c:I

    add-int/lit16 v2, v2, -0x208

    if-le v1, v2, :cond_6

    .line 154
    sget v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->d:F

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float/2addr v1, v2

    sput v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->d:F

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 155
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_3

    .line 111
    :cond_3
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_1

    .line 133
    :cond_4
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, ","

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 146
    :cond_5
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: addresses is NULL!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v7

    goto :goto_2

    .line 148
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    .line 149
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 158
    :cond_6
    sget v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->c:I

    sget v2, Lcom/muvee/mvdronecomposer/theme/diagonal;->b:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 159
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 161
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 162
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 163
    sget v5, Lcom/muvee/mvdronecomposer/theme/diagonal;->b:I

    sub-int/2addr v5, v3

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 164
    const/high16 v6, 0x43fa0000    # 500.0f

    .line 166
    sget-object v7, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "::makeResource:: bgLocationHeight: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v12, Lcom/muvee/mvdronecomposer/theme/diagonal;->b:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", bgLocationWidth: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v12, Lcom/muvee/mvdronecomposer/theme/diagonal;->c:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", textFeatureNameHeight: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", textFeatureNameWidth: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", offsetFeatureNameHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", offsetFeatureNameWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget v3, Lcom/muvee/mvdronecomposer/theme/diagonal;->b:I

    int-to-float v3, v3

    sub-float/2addr v3, v5

    invoke-virtual {v2, v0, v6, v3, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 172
    :try_start_2
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/styles/diagonal/txt_location_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 175
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 177
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v5, "/styles/diagonal/txt_location.png"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 179
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 180
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    if-eqz v1, :cond_7

    .line 185
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 191
    :cond_7
    :goto_4
    sget v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->r:I

    sget v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->q:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/muvee/mvdronecomposer/theme/diagonal;->getBitmapFromURL(IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_c

    .line 195
    :try_start_3
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/styles/diagonal/img_map_trace_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 198
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 200
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v5, "/styles/diagonal/img_map_trace.png"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 202
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 203
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 207
    if-eqz v1, :cond_8

    .line 208
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 272
    :cond_8
    :goto_5
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-wide v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->dataStartTime:D

    double-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 273
    const-string v2, "dd.MM.yyyy hha"

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::makeResource:: dataStartTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 278
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    sget v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->g:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 280
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 281
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 283
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 284
    sget v3, Lcom/muvee/mvdronecomposer/theme/diagonal;->f:I

    sget v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->e:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 285
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 287
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 288
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 289
    sget v6, Lcom/muvee/mvdronecomposer/theme/diagonal;->e:I

    sub-int/2addr v6, v5

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 290
    const/high16 v7, 0x43fa0000    # 500.0f

    .line 292
    sget-object v8, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "::makeResource:: bgDateHeight: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v12, Lcom/muvee/mvdronecomposer/theme/diagonal;->e:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", bgDateWidth: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v12, Lcom/muvee/mvdronecomposer/theme/diagonal;->f:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", textDateHeight: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", textDateWidth: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", offsetDateHeight: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", offsetDateWidth: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->e:I

    int-to-float v1, v1

    sub-float/2addr v1, v6

    invoke-virtual {v4, v2, v7, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 298
    :try_start_4
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/styles/diagonal/txt_date_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 301
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 303
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v5, "/styles/diagonal/txt_date.png"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 305
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 306
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 310
    if-eqz v3, :cond_9

    .line 311
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 317
    :cond_9
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FLIGHT TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-wide v2, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->dataDuration:D

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 320
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    sget v2, Lcom/muvee/mvdronecomposer/theme/diagonal;->j:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 322
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 323
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 325
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 326
    :goto_7
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->i:I

    add-int/lit16 v4, v4, -0x1c2

    if-le v3, v4, :cond_17

    .line 327
    sget v3, Lcom/muvee/mvdronecomposer/theme/diagonal;->j:F

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float/2addr v3, v4

    sput v3, Lcom/muvee/mvdronecomposer/theme/diagonal;->j:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 328
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_7

    .line 181
    :catch_1
    move-exception v0

    .line 182
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 184
    if-eqz v1, :cond_7

    .line 185
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_4

    .line 184
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_a

    .line 185
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    :cond_a
    throw v0

    .line 204
    :catch_2
    move-exception v0

    .line 205
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 207
    if-eqz v1, :cond_8

    .line 208
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_5

    .line 207
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_b

    .line 208
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 209
    :cond_b
    throw v0

    .line 213
    :cond_c
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v2, "/styles/diagonal/pin_a.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v3, "/styles/diagonal/pin_b.png"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 217
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 219
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 220
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 222
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 224
    sget v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->r:I

    sget v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->q:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 225
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 226
    const/16 v1, 0xb4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 228
    sget v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 229
    sget-object v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::makeResource:: bgMapTraceHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/muvee/mvdronecomposer/theme/diagonal;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bgMapTraceWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/muvee/mvdronecomposer/theme/diagonal;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->r:I

    sget v2, Lcom/muvee/mvdronecomposer/theme/diagonal;->q:I

    invoke-static {v1, v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->setDrawblePointXY(II)V

    .line 231
    const/4 v1, 0x0

    move v6, v1

    :goto_8
    sget v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    if-ge v6, v1, :cond_d

    .line 232
    sget-object v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::makeResource:: drawblePointX["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    aget-wide v12, v3, v6

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", drawblePointY["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    aget-wide v12, v3, v6

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", drawblePointX["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    add-int/lit8 v4, v6, 0x1

    aget-wide v12, v3, v4

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", drawblePointY["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    add-int/lit8 v4, v6, 0x1

    aget-wide v12, v3, v4

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    aget-wide v2, v1, v6

    double-to-float v1, v2

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    aget-wide v2, v2, v6

    double-to-float v2, v2

    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    add-int/lit8 v4, v6, 0x1

    aget-wide v12, v3, v4

    double-to-float v3, v12

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    add-int/lit8 v12, v6, 0x1

    aget-wide v12, v4, v12

    double-to-float v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 231
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_8

    .line 236
    :cond_d
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    double-to-float v1, v2

    const/high16 v2, 0x41800000    # 16.0f

    sub-float/2addr v1, v2

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    double-to-float v2, v2

    const/high16 v3, 0x42000000    # 32.0f

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 237
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    aget-wide v2, v1, v2

    double-to-float v1, v2

    const/high16 v2, 0x41800000    # 16.0f

    sub-float/2addr v1, v2

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    aget-wide v2, v2, v3

    double-to-float v2, v2

    const/high16 v3, 0x42000000    # 32.0f

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 239
    invoke-static {v7}, Lcom/muvee/mvdronecomposer/theme/diagonal;->getCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 244
    :goto_9
    :try_start_7
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/styles/diagonal/img_map_trace_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 246
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 247
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 249
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v5, "/styles/diagonal/img_map_trace.png"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 251
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 252
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 256
    if-eqz v1, :cond_e

    .line 257
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 260
    :cond_e
    if-eqz v8, :cond_f

    .line 261
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 264
    :cond_f
    if-eqz v9, :cond_8

    .line 265
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_5

    .line 241
    :cond_10
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: location data wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    goto :goto_9

    .line 253
    :catch_3
    move-exception v0

    .line 254
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 256
    if-eqz v1, :cond_11

    .line 257
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 260
    :cond_11
    if-eqz v8, :cond_12

    .line 261
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 264
    :cond_12
    if-eqz v9, :cond_8

    .line 265
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_5

    .line 256
    :catchall_2
    move-exception v0

    if-eqz v1, :cond_13

    .line 257
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 260
    :cond_13
    if-eqz v8, :cond_14

    .line 261
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 264
    :cond_14
    if-eqz v9, :cond_15

    .line 265
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 266
    :cond_15
    throw v0

    .line 307
    :catch_4
    move-exception v0

    .line 308
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 310
    if-eqz v3, :cond_9

    .line 311
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_6

    .line 310
    :catchall_3
    move-exception v0

    if-eqz v3, :cond_16

    .line 311
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 312
    :cond_16
    throw v0

    .line 331
    :cond_17
    sget v3, Lcom/muvee/mvdronecomposer/theme/diagonal;->i:I

    sget v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->h:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 332
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 334
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 335
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 336
    sget v6, Lcom/muvee/mvdronecomposer/theme/diagonal;->h:I

    sub-int/2addr v6, v5

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 337
    const/high16 v7, 0x43fa0000    # 500.0f

    .line 339
    sget-object v8, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "::makeResource:: bgFlightTimeHeight: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v12, Lcom/muvee/mvdronecomposer/theme/diagonal;->h:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", bgFlightTimeWidth: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v12, Lcom/muvee/mvdronecomposer/theme/diagonal;->i:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", textFlightTimeHeight: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", textFlightTimeWidth: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", offsetFlightTimeHeight: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", offsetFlightTimeWidth: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget v2, Lcom/muvee/mvdronecomposer/theme/diagonal;->h:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    invoke-virtual {v4, v0, v7, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 345
    :try_start_a
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/styles/diagonal/txt_flight_time_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 347
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 348
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 350
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v5, "/styles/diagonal/txt_flight_time.png"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 352
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 353
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 357
    if-eqz v3, :cond_18

    .line 358
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 364
    :cond_18
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAX ALTITUDE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget v1, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->maxAltitude:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 367
    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    sget v2, Lcom/muvee/mvdronecomposer/theme/diagonal;->p:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 369
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 370
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 372
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 373
    sget v3, Lcom/muvee/mvdronecomposer/theme/diagonal;->o:I

    sget v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->n:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 374
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 376
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 377
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 378
    sget v6, Lcom/muvee/mvdronecomposer/theme/diagonal;->n:I

    sub-int/2addr v6, v5

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 379
    sget v7, Lcom/muvee/mvdronecomposer/theme/diagonal;->o:I

    sub-int/2addr v7, v2

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 381
    sget-object v8, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "::makeResource:: bgMaxAltitudeHeight: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v12, Lcom/muvee/mvdronecomposer/theme/diagonal;->n:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", bgMaxAltitudeWidth: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v12, Lcom/muvee/mvdronecomposer/theme/diagonal;->o:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", textMaxAltitudeHeight: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", textMaxAltitudeWidth: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", offsetMaxAltitudeHeight: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", offsetMaxAltitudeWidth: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    sget v2, Lcom/muvee/mvdronecomposer/theme/diagonal;->n:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    invoke-virtual {v4, v0, v7, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 387
    :try_start_b
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/styles/diagonal/txt_max_altitude_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 389
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 390
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 392
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v5, "/styles/diagonal/txt_max_altitude.png"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 394
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 395
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 399
    if-eqz v3, :cond_19

    .line 400
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 406
    :cond_19
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAX SPEED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget v1, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->maxSpeed:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kph"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 409
    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    sget v2, Lcom/muvee/mvdronecomposer/theme/diagonal;->m:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 411
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 412
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 414
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 415
    sget v3, Lcom/muvee/mvdronecomposer/theme/diagonal;->l:I

    sget v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->k:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 416
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 418
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 419
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 420
    sget v6, Lcom/muvee/mvdronecomposer/theme/diagonal;->k:I

    sub-int/2addr v6, v5

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x40a00000    # 5.0f

    add-float/2addr v6, v7

    .line 421
    sget v7, Lcom/muvee/mvdronecomposer/theme/diagonal;->l:I

    sub-int/2addr v7, v2

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 423
    sget-object v8, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "::makeResource:: bgMaxSpeedHeight: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v12, Lcom/muvee/mvdronecomposer/theme/diagonal;->k:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", bgMaxSpeedWidth: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v12, Lcom/muvee/mvdronecomposer/theme/diagonal;->l:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", textMaxSpeedHeight: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", textMaxSpeedWidth: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", offsetMaxSpeedHeight: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", offsetMaxSpeedWidth: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    sget v2, Lcom/muvee/mvdronecomposer/theme/diagonal;->k:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    invoke-virtual {v4, v0, v7, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 429
    :try_start_c
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/styles/diagonal/txt_max_speed_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 431
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 432
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 434
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/diagonal;->u:Ljava/io/File;

    const-string v5, "/styles/diagonal/txt_max_speed.png"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 436
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 437
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 441
    if-eqz v3, :cond_1a

    .line 442
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 446
    :cond_1a
    :goto_c
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/diagonal;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::makeResource:: taken time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " milliseconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void

    .line 354
    :catch_5
    move-exception v0

    .line 355
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 357
    if-eqz v3, :cond_18

    .line 358
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_a

    .line 357
    :catchall_4
    move-exception v0

    if-eqz v3, :cond_1b

    .line 358
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 359
    :cond_1b
    throw v0

    .line 396
    :catch_6
    move-exception v0

    .line 397
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 399
    if-eqz v3, :cond_19

    .line 400
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_b

    .line 399
    :catchall_5
    move-exception v0

    if-eqz v3, :cond_1c

    .line 400
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 401
    :cond_1c
    throw v0

    .line 438
    :catch_7
    move-exception v0

    .line 439
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 441
    if-eqz v3, :cond_1a

    .line 442
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_c

    .line 441
    :catchall_6
    move-exception v0

    if-eqz v3, :cond_1d

    .line 442
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 443
    :cond_1d
    throw v0

    :cond_1e
    move-object v7, v0

    goto/16 :goto_0
.end method
