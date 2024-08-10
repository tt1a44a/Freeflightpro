.class public Lcom/muvee/mvdronecomposer/theme/simple;
.super Ljava/lang/Object;
.source "simple.java"


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

.field private static p:I

.field private static q:I

.field private static r:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x1fe

    .line 50
    const-class v0, Lcom/muvee/mvdronecomposer/theme/simple;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    .line 52
    const/16 v0, 0x96

    sput v0, Lcom/muvee/mvdronecomposer/theme/simple;->b:I

    .line 53
    const/16 v0, 0x514

    sput v0, Lcom/muvee/mvdronecomposer/theme/simple;->c:I

    .line 54
    const/high16 v0, 0x42c80000    # 100.0f

    sput v0, Lcom/muvee/mvdronecomposer/theme/simple;->d:F

    .line 55
    const/16 v0, 0x64

    sput v0, Lcom/muvee/mvdronecomposer/theme/simple;->e:I

    .line 56
    const/16 v0, 0x3e8

    sput v0, Lcom/muvee/mvdronecomposer/theme/simple;->f:I

    .line 57
    const/high16 v0, 0x42700000    # 60.0f

    sput v0, Lcom/muvee/mvdronecomposer/theme/simple;->g:F

    .line 58
    sget v0, Lcom/muvee/mvdronecomposer/theme/simple;->e:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/simple;->h:I

    .line 59
    sget v0, Lcom/muvee/mvdronecomposer/theme/simple;->f:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/simple;->i:I

    .line 60
    sget v0, Lcom/muvee/mvdronecomposer/theme/simple;->g:F

    sput v0, Lcom/muvee/mvdronecomposer/theme/simple;->j:F

    .line 61
    sget v0, Lcom/muvee/mvdronecomposer/theme/simple;->h:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/simple;->k:I

    .line 62
    sget v0, Lcom/muvee/mvdronecomposer/theme/simple;->i:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/simple;->l:I

    .line 63
    sget v0, Lcom/muvee/mvdronecomposer/theme/simple;->j:F

    sput v0, Lcom/muvee/mvdronecomposer/theme/simple;->m:F

    .line 64
    sput v1, Lcom/muvee/mvdronecomposer/theme/simple;->n:I

    .line 65
    sput v1, Lcom/muvee/mvdronecomposer/theme/simple;->o:I

    .line 67
    const/16 v0, 0x60

    sput v0, Lcom/muvee/mvdronecomposer/theme/simple;->p:I

    .line 68
    const/16 v0, 0x37

    sput v0, Lcom/muvee/mvdronecomposer/theme/simple;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertKphToMs(F)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1749
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    const/high16 v1, 0x45610000    # 3600.0f

    div-float/2addr v0, v1

    .line 1750
    sget-object v1, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::convertKphToMs:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "kph:  %f, result m/s:  %f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    const-string v1, "%dm/s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertSecondsToHMmSs(J)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v2, 0x3c

    .line 1742
    rem-long v0, p0, v2

    .line 1743
    div-long v0, p0, v2

    rem-long/2addr v0, v2

    .line 1744
    const-wide/16 v2, 0xe10

    div-long v2, p0, v2

    const-wide/16 v4, 0x18

    rem-long/2addr v2, v4

    .line 1745
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

.method public static getEffectDescriptions(Lcom/muvee/mvdronecomposer/SettingsParam;JJ)[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;
    .locals 15

    .prologue
    .line 441
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::getEffectDescriptions: targetDuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", creditDuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v3, 0x1

    .line 445
    const/4 v2, 0x0

    .line 446
    sget-boolean v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_IN_EFFECT_WHEN_START:Z

    if-eqz v4, :cond_0

    .line 447
    const/4 v3, 0x2

    .line 448
    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->VIDEO_FADE_IN_DURATION:I

    .line 451
    :cond_0
    const/4 v4, 0x0

    .line 452
    sget-boolean v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_OUT_EFFECT_WHEN_CLOSE:Z

    if-eqz v5, :cond_1d

    .line 453
    add-int/lit8 v4, v3, 0x1

    .line 454
    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->VIDEO_FADE_OUT_DURATION:I

    move v6, v3

    .line 457
    :goto_0
    const/4 v3, 0x0

    .line 458
    sub-long v8, p1, p3

    int-to-long v10, v2

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1770

    cmp-long v5, v8, v10

    if-ltz v5, :cond_1c

    .line 459
    const/4 v3, 0x1

    .line 460
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    .line 462
    :goto_1
    const/4 v3, 0x0

    .line 463
    sub-long v8, p1, p3

    int-to-long v10, v2

    sub-long/2addr v8, v10

    int-to-long v10, v6

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x2ee0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1

    .line 464
    const/4 v3, 0x1

    .line 465
    add-int/lit8 v4, v4, 0x1

    .line 468
    :cond_1
    sget-object v7, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "::getEffectDescriptions:: effectNum: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timeOffForFadeIn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-array v7, v4, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    .line 472
    const/4 v4, -0x1

    .line 475
    sget-boolean v8, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_IN_EFFECT_WHEN_START:Z

    if-eqz v8, :cond_2

    .line 477
    const/4 v4, 0x0

    .line 480
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v8, v7, v4

    .line 481
    aget-object v8, v7, v4

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 482
    aget-object v8, v7, v4

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 484
    const/16 v8, 0xc

    .line 485
    aget-object v9, v7, v4

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v8, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 487
    const/4 v8, 0x0

    .line 488
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 489
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 490
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 491
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 492
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 493
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, -0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 494
    const/4 v8, 0x1

    .line 495
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 496
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_RGBColorR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 497
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 498
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 499
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 500
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 501
    const/4 v8, 0x2

    .line 502
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 503
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorIntensityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 504
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 505
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 506
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 507
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x64

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 508
    const/4 v8, 0x3

    .line 509
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 510
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorLayer:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 511
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 512
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 513
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 514
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x2

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 515
    const/4 v8, 0x4

    .line 516
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 517
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 518
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 519
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 520
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 521
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 522
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x1f4

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 523
    const/4 v8, 0x5

    .line 524
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 525
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 526
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 527
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 528
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 529
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 530
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x1f4

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 531
    const/4 v8, 0x6

    .line 532
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 533
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 534
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 535
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 536
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 537
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 538
    const/4 v8, 0x7

    .line 539
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 540
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 541
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 542
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 543
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 544
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 545
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x3e8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 546
    const/16 v8, 0x8

    .line 547
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 548
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 549
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 550
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 551
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 552
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 553
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x3e8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 554
    const/16 v8, 0x9

    .line 555
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 556
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 557
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x2

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 558
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x2

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 559
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 560
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 561
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/16 v10, 0x64

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 562
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x1

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 563
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/16 v10, 0x3e8

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 564
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 565
    const/16 v8, 0xa

    .line 566
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 567
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 568
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 569
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 570
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 571
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 572
    const/16 v8, 0xb

    .line 573
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 574
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 575
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 576
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 577
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 578
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 581
    :cond_2
    sget-boolean v8, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_OUT_EFFECT_WHEN_CLOSE:Z

    if-eqz v8, :cond_3

    .line 583
    add-int/lit8 v4, v4, 0x1

    .line 586
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v8, v7, v4

    .line 587
    aget-object v8, v7, v4

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 588
    aget-object v8, v7, v4

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    sub-long v10, p1, p3

    int-to-long v12, v6

    sub-long/2addr v10, v12

    long-to-int v10, v10

    sub-long v12, p1, p3

    long-to-int v11, v12

    invoke-direct {v9, v10, v11}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 590
    const/16 v8, 0xc

    .line 591
    aget-object v9, v7, v4

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v8, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 593
    const/4 v8, 0x0

    .line 594
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 595
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 596
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 597
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 598
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 599
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, -0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 600
    const/4 v8, 0x1

    .line 601
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 602
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_RGBColorR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 603
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 604
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 605
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 606
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 607
    const/4 v8, 0x2

    .line 608
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 609
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorIntensityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 610
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 611
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 612
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 613
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x64

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 614
    const/4 v8, 0x3

    .line 615
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 616
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorLayer:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 617
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 618
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 619
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 620
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x2

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 621
    const/4 v8, 0x4

    .line 622
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 623
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 624
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 625
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 626
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 627
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 628
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x1f4

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 629
    const/4 v8, 0x5

    .line 630
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 631
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 632
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 633
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 634
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 635
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 636
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x1f4

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 637
    const/4 v8, 0x6

    .line 638
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 639
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 640
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 641
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 642
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 643
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 644
    const/4 v8, 0x7

    .line 645
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 646
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 647
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 648
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 649
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 650
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 651
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x3e8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 652
    const/16 v8, 0x8

    .line 653
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 654
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 655
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 656
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 657
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 658
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 659
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x3e8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 660
    const/16 v8, 0x9

    .line 661
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 662
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 663
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x2

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 664
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x2

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 665
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 666
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 667
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 668
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x1

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 669
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/16 v10, 0x3e8

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 670
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0x64

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 671
    const/16 v8, 0xa

    .line 672
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 673
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 674
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 675
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 676
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 677
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 678
    const/16 v8, 0xb

    .line 679
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v9, v8

    .line 680
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 681
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 682
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 683
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v10, 0x0

    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v11, v9, v10

    .line 684
    aget-object v9, v7, v4

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v9, v8

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 687
    :cond_3
    if-eqz v5, :cond_a

    .line 689
    add-int/lit8 v4, v4, 0x1

    .line 692
    sget-object v5, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "::getEffectDescriptions:: Location and date info++ effectNo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v5, v7, v4

    .line 695
    aget-object v5, v7, v4

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 696
    aget-object v5, v7, v4

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    add-int/lit16 v9, v2, 0xc8

    add-int/lit16 v10, v2, 0x1450

    invoke-direct {v8, v9, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 698
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 699
    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 700
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 701
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    const-string v10, "/styles/simple/img_line.png"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 703
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 704
    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 705
    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 706
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    const-string v11, "/styles/simple/txt_location.png"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 708
    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 709
    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 710
    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 711
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    const-string v12, "/styles/simple/txt_date.png"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 713
    aget-object v10, v7, v4

    const/4 v11, 0x3

    new-array v11, v11, [Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v5, 0x1

    aput-object v8, v11, v5

    const/4 v5, 0x2

    aput-object v9, v11, v5

    iput-object v11, v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->resourceList:[Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    .line 715
    const/16 v5, 0x19

    .line 716
    aget-object v8, v7, v4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v5, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 719
    const/4 v5, 0x0

    .line 720
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 721
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 722
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 723
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 724
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 725
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, -0x1

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 726
    const/4 v5, 0x1

    .line 727
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 728
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 729
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 730
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 731
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 732
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 733
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/16 v8, 0x1f4

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 734
    const/4 v5, 0x2

    .line 735
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 736
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 737
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 738
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 739
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 740
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 741
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/16 v8, 0x1f4

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 742
    const/4 v5, 0x3

    .line 743
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 744
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 745
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 746
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 747
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 748
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/16 v8, 0xa

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 749
    const/4 v5, 0x4

    .line 750
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 751
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 752
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 753
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x6

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 754
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x6

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 755
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 756
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 757
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 758
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 759
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0xbe

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 760
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 761
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 762
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/16 v9, 0xc8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 763
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/16 v9, 0x1f4

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 764
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x3

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 765
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/16 v9, 0xf0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 766
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/16 v9, 0x2a8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 767
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x4

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 768
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    const/16 v9, 0x118

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 769
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    const/16 v9, 0x2da

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 770
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x5

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 771
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    const/16 v9, 0x3e8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 772
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x5

    aget-object v5, v5, v8

    const/16 v8, 0x2da

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 773
    const/4 v5, 0x5

    .line 774
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 775
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 776
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 777
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 778
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 779
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 780
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x4

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 781
    const/4 v5, 0x6

    .line 782
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 783
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 784
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x3

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 785
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x3

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 786
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 787
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 788
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v8

    if-nez v8, :cond_4

    sget v8, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_e

    .line 789
    :cond_4
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 793
    :goto_2
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 794
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0x384

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 795
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v8

    if-nez v8, :cond_5

    sget v8, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_f

    .line 796
    :cond_5
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 800
    :goto_3
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 801
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/16 v9, 0x3e8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 802
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x2

    aget-object v5, v5, v8

    const/4 v8, 0x0

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 805
    const/4 v5, 0x7

    .line 806
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 807
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 808
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 809
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 810
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 811
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, -0x1

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 812
    const/16 v5, 0x8

    .line 813
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 814
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 815
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 816
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 817
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 818
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 819
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/16 v8, 0x1f4

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 820
    const/16 v5, 0x9

    .line 821
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 822
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 823
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 824
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x4

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 825
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x4

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 826
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 827
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 828
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x1c2

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 829
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 830
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0xf0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 831
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0x1c2

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 832
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 833
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/16 v9, 0x140

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 834
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/16 v9, 0x24e

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 835
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x3

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 836
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/16 v9, 0x3e8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 837
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x3

    aget-object v5, v5, v8

    const/16 v8, 0x24e

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 838
    const/16 v5, 0xa

    .line 839
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 840
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 841
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 842
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 843
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 844
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/16 v8, 0xa

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 845
    const/16 v5, 0xb

    .line 846
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 847
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 848
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 849
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 850
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 851
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 852
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/16 v8, 0x2a5

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 853
    const/16 v5, 0xc

    .line 854
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 855
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 856
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 857
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 858
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 859
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 860
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/16 v8, 0x8b

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 861
    const/16 v5, 0xd

    .line 862
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 863
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 864
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x3

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 865
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x3

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 866
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 867
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 868
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v8

    if-nez v8, :cond_6

    sget v8, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_10

    .line 869
    :cond_6
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 873
    :goto_4
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 874
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0x384

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 875
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v8

    if-nez v8, :cond_7

    sget v8, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_11

    .line 876
    :cond_7
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 880
    :goto_5
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 881
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/16 v9, 0x3e8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 882
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x2

    aget-object v5, v5, v8

    const/4 v8, 0x0

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 883
    const/16 v5, 0xe

    .line 884
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 885
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY32:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 886
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x4

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 887
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x4

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 888
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 889
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 890
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 891
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 892
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0xf0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 893
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 894
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 895
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/16 v9, 0x140

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 896
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/16 v9, 0x64

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 897
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x3

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 898
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/16 v9, 0x3e8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 899
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x3

    aget-object v5, v5, v8

    const/16 v8, 0x64

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 902
    const/16 v5, 0xf

    .line 903
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 904
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 905
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 906
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 907
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 908
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, -0x1

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 909
    const/16 v5, 0x10

    .line 910
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 911
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 912
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 913
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 914
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 915
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 916
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/16 v8, 0x1f4

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 917
    const/16 v5, 0x11

    .line 918
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 919
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 920
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 921
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x4

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 922
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x4

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 923
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 924
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 925
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x212

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 926
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 927
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0xf0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 928
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0x212

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 929
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 930
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/16 v9, 0x140

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 931
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/16 v9, 0x1ae

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 932
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x3

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 933
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/16 v9, 0x3e8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 934
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x3

    aget-object v5, v5, v8

    const/16 v8, 0x1ae

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 935
    const/16 v5, 0x12

    .line 936
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 937
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 938
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 939
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 940
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 941
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/16 v8, 0xa

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 942
    const/16 v5, 0x13

    .line 943
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 944
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 945
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 946
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 947
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 948
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 949
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/16 v8, 0x208

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 950
    const/16 v5, 0x14

    .line 951
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 952
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 953
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 954
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 955
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 956
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 957
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/16 v8, 0x5d

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 958
    const/16 v5, 0x15

    .line 959
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 960
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 961
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x3

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 962
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x3

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 963
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 964
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 965
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v8

    if-nez v8, :cond_8

    sget v8, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_12

    .line 966
    :cond_8
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 970
    :goto_6
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 971
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0x384

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 972
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v8

    if-nez v8, :cond_9

    sget v8, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_13

    .line 973
    :cond_9
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 977
    :goto_7
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 978
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/16 v9, 0x3e8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 979
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x2

    aget-object v5, v5, v8

    const/4 v8, 0x0

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 980
    const/16 v5, 0x16

    .line 981
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 982
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY03:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 983
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x4

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 984
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x4

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 985
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 986
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 987
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x64

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 988
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 989
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0xf0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 990
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0x64

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 991
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 992
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/16 v9, 0x140

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 993
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 994
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x3

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 995
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/16 v9, 0x3e8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 996
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x3

    aget-object v5, v5, v8

    const/4 v8, 0x0

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 998
    const/16 v5, 0x17

    .line 999
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 1000
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1001
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1002
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1003
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 1004
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/16 v8, 0x8

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1006
    const/16 v5, 0x18

    .line 1007
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v5

    .line 1008
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1009
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1010
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1011
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 1012
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v8, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x0

    iput v8, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1015
    :cond_a
    if-eqz v3, :cond_1b

    .line 1017
    add-int/lit8 v3, v4, 0x1

    .line 1019
    sget-object v4, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "::getEffectDescriptions:: Max speed, Max altitude and map trace++ effectNo: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v4, v7, v3

    .line 1022
    aget-object v4, v7, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 1023
    aget-object v4, v7, v3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const-wide/16 v8, 0x1450

    sub-long v8, p1, v8

    sub-long v8, v8, p3

    int-to-long v10, v2

    sub-long/2addr v8, v10

    int-to-long v10, v6

    sub-long/2addr v8, v10

    long-to-int v8, v8

    const-wide/16 v10, 0xc8

    sub-long v10, p1, v10

    sub-long v10, v10, p3

    int-to-long v12, v2

    sub-long/2addr v10, v12

    int-to-long v12, v6

    sub-long/2addr v10, v12

    long-to-int v2, v10

    invoke-direct {v5, v8, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1026
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 1027
    sget-object v4, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v4

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 1028
    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1029
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    const-string v6, "/styles/simple/img_line2.png"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 1031
    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 1032
    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 1033
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1034
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    const-string v8, "/styles/simple/txt_max_altitude.png"

    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 1036
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 1037
    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 1038
    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1039
    new-instance v6, Ljava/io/File;

    sget-object v8, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    const-string v9, "/styles/simple/txt_max_speed.png"

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 1041
    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 1042
    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 1043
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v8, v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1044
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    const-string v10, "/styles/simple/img_map_ellipse.png"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 1046
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 1047
    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 1048
    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1049
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    const-string v11, "/styles/simple/img_map_ring.png"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 1051
    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 1052
    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 1053
    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1054
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    const-string v12, "/styles/simple/img_map_trace.png"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 1056
    aget-object v10, v7, v3

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v2, 0x1

    aput-object v4, v11, v2

    const/4 v2, 0x2

    aput-object v5, v11, v2

    const/4 v2, 0x3

    aput-object v6, v11, v2

    const/4 v2, 0x4

    aput-object v8, v11, v2

    const/4 v2, 0x5

    aput-object v9, v11, v2

    iput-object v11, v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->resourceList:[Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    .line 1059
    const/16 v2, 0x2e

    .line 1060
    aget-object v4, v7, v3

    new-array v2, v2, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v2, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1063
    const/4 v2, 0x0

    .line 1064
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1065
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1066
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1067
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1068
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1069
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1070
    const/4 v2, 0x1

    .line 1071
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1072
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1073
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1074
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1075
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1076
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1077
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1078
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x5dc

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1079
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1080
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x32

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1081
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x271

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1082
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1083
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x3c0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1084
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x271

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1085
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1086
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1087
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/16 v4, 0x5dc

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1088
    const/4 v2, 0x2

    .line 1089
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1090
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1091
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1092
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1093
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1094
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1095
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x1f4

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1096
    const/4 v2, 0x3

    .line 1097
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1098
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1099
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1100
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1101
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1102
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1103
    const/4 v2, 0x4

    .line 1104
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1105
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1106
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1107
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1108
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1109
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1110
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x2da

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1111
    const/4 v2, 0x5

    .line 1112
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1113
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1114
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1115
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1116
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1117
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1118
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x4

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1119
    const/4 v2, 0x6

    .line 1120
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1121
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1122
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1123
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1124
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1125
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1126
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1132
    :goto_8
    const/4 v2, 0x7

    .line 1133
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1134
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1135
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1136
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1137
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1138
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1139
    const/16 v2, 0x8

    .line 1140
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1141
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1142
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1143
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1144
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1145
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1146
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x2bc

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1147
    const/16 v2, 0x9

    .line 1148
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1149
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1150
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1151
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1152
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1153
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1154
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1155
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x1d6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1156
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1157
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x32

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1158
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x1d6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1159
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1160
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x82

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1161
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x23a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1162
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1163
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x384

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1164
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x23a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1165
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1166
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x3ca

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1167
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x1d6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1168
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1169
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1170
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x1d6

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1171
    const/16 v2, 0xa

    .line 1172
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1173
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1174
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1175
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1176
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1177
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1178
    const/16 v2, 0xb

    .line 1179
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1180
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1181
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1182
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1183
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1184
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1185
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x208

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1186
    const/16 v2, 0xc

    .line 1187
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1188
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1189
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1190
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1191
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1192
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1193
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x5d

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1194
    const/16 v2, 0xd

    .line 1195
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1196
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1197
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1198
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1199
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1200
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1201
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1205
    :goto_9
    const/16 v2, 0xe

    .line 1206
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1207
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY32:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1208
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1209
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1210
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1211
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1212
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1213
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1214
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x32

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1215
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1216
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1217
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x82

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1218
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1219
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1220
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x384

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1221
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1222
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1223
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x3ca

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1224
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1225
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1226
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1227
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1230
    const/16 v2, 0xf

    .line 1231
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1232
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1233
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1234
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1235
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1236
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1237
    const/16 v2, 0x10

    .line 1238
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1239
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1240
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1241
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1242
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1243
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1244
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x2bc

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1245
    const/16 v2, 0x11

    .line 1246
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1247
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1248
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1249
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1250
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1251
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1252
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1253
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x212

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1254
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1255
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x32

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1256
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x212

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1257
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1258
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x82

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1259
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x1ae

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1260
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1261
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x384

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1262
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x1ae

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1263
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1264
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x3ca

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1265
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x212

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1266
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1267
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1268
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x212

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1269
    const/16 v2, 0x12

    .line 1270
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1271
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1272
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1273
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1274
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1275
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1276
    const/16 v2, 0x13

    .line 1277
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1278
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1279
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1280
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1281
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1282
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1283
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x208

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1284
    const/16 v2, 0x14

    .line 1285
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1286
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1287
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1288
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1289
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1290
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1291
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x5d

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1292
    const/16 v2, 0x15

    .line 1293
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1294
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1295
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1296
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1297
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1298
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1299
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1303
    :goto_a
    const/16 v2, 0x16

    .line 1304
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1305
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY03:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1306
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1307
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1308
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1309
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1310
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1311
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1312
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x32

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1313
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1314
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1315
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x82

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1316
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1317
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1318
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x384

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1319
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1320
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1321
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x3ca

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1322
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1323
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1324
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1325
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1328
    const/16 v2, 0x17

    .line 1329
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1330
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1331
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1332
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1333
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1334
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1335
    const/16 v2, 0x18

    .line 1336
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1337
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1338
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1339
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1340
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1341
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1342
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xfa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1343
    const/16 v2, 0x19

    .line 1344
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1345
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1346
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1347
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1348
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1349
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1350
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x1f4

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1351
    const/16 v2, 0x1a

    .line 1352
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1353
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1354
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1355
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1356
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1357
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1358
    const/16 v2, 0x1b

    .line 1359
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1360
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1361
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1362
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x7

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1363
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x7

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1364
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1365
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1366
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1367
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1368
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x31

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1369
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1370
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1371
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x32

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1372
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1373
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1374
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x78

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1375
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x119

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1376
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1377
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x384

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1378
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x119

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1379
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1380
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3ca

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1381
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1382
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x6

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1383
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1384
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x6

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1385
    const/16 v2, 0x1c

    .line 1386
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1387
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1388
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1389
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x7

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1390
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x7

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1391
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1392
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1393
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1394
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1395
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x31

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1396
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1397
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1398
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x32

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1399
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x177

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1400
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1401
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x78

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1402
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x1f4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1403
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1404
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x384

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1405
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x1f4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1406
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1407
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3ca

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1408
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1409
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x6

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1410
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1411
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x6

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1412
    const/16 v2, 0x1d

    .line 1413
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1414
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1415
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1416
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1417
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1418
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v4

    if-nez v4, :cond_b

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_17

    .line 1419
    :cond_b
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1425
    :goto_b
    const/16 v2, 0x1e

    .line 1426
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1427
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1428
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1429
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1430
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1431
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1432
    const/16 v2, 0x1f

    .line 1433
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1434
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1435
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1436
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1437
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1438
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1439
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xfa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1440
    const/16 v2, 0x20

    .line 1441
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1442
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1443
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1444
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1445
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1446
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1447
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x1f4

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1448
    const/16 v2, 0x21

    .line 1449
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1450
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1451
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1452
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1453
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1454
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1455
    const/16 v2, 0x22

    .line 1456
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1457
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1458
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1459
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1460
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1461
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1462
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1463
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1464
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1465
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x77

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1466
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1467
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1468
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x78

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1469
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x119

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1470
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1471
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x398

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1472
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x119

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1473
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1474
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x3ca

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1475
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1476
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1477
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1478
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1479
    const/16 v2, 0x23

    .line 1480
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1481
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1482
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1483
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1484
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1485
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1486
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1487
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1488
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1489
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x77

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1490
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1491
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1492
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x78

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1493
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x1f4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1494
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1495
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x398

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1496
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x1f4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1497
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1498
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x3ca

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1499
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1500
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1501
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1502
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1503
    const/16 v2, 0x24

    .line 1504
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1505
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1506
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1507
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1508
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1509
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v4

    if-nez v4, :cond_c

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_18

    .line 1510
    :cond_c
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1516
    :goto_c
    const/16 v2, 0x25

    .line 1517
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1518
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1519
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1520
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1521
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1522
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1523
    const/16 v2, 0x26

    .line 1524
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1525
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1526
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1527
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1528
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1529
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1530
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xfa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1531
    const/16 v2, 0x27

    .line 1532
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1533
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1534
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1535
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1536
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1537
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1538
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x1f4

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1539
    const/16 v2, 0x28

    .line 1540
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1541
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1542
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1543
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1544
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1545
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1546
    const/16 v2, 0x29

    .line 1547
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1548
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1549
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1550
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x7

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1551
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x7

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1552
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1553
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1554
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1555
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1556
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x31

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1557
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1558
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1559
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x32

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1560
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xc8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1561
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1562
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x78

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1563
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x10a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1564
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1565
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x384

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1566
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x10a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1567
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1568
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3ca

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1569
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1570
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x6

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1571
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1572
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x6

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1573
    const/16 v2, 0x2a

    .line 1574
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1575
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1576
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1577
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x7

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1578
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x7

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1579
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1580
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1581
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1582
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1583
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x31

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1584
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1585
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1586
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x32

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1587
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x162

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1588
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1589
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x78

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1590
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x1d8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1591
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1592
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x384

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1593
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x1d8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1594
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1595
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3ca

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1596
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1597
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x6

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1598
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1599
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x6

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1600
    const/16 v2, 0x2b

    .line 1601
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1602
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1603
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1604
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1605
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1606
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v4

    if-nez v4, :cond_d

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_19

    .line 1607
    :cond_d
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1612
    :goto_d
    const/16 v2, 0x2c

    .line 1613
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1614
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1615
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1616
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1617
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1618
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x8

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1620
    const/16 v2, 0x2d

    .line 1621
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1622
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1623
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1624
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1625
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1626
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    move v2, v3

    .line 1630
    :goto_e
    add-int/lit8 v2, v2, 0x1

    .line 1631
    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v3, v7, v2

    .line 1632
    aget-object v3, v7, v2

    sget-object v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_GRAPHIC_OVERLAY_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 1633
    aget-object v3, v7, v2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v5, 0x0

    sub-long v8, p1, p3

    long-to-int v6, v8

    invoke-direct {v4, v5, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1635
    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 1636
    sget-object v4, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_GraphicID:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v4

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 1637
    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1638
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getWatermarkPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 1640
    sget-object v4, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::getEffectDescriptions:: resourcePath: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    aget-object v4, v7, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->resourceList:[Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    .line 1644
    aget-object v3, v7, v2

    const/16 v4, 0xa

    new-array v4, v4, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1647
    const/4 v3, 0x0

    .line 1648
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 1649
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CoordX:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1650
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1651
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1652
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1653
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosX:I

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1654
    const/4 v3, 0x1

    .line 1655
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 1656
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CoordY:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1657
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1658
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1659
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1660
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosY:I

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1661
    const/4 v3, 0x2

    .line 1662
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 1663
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_ObjectWidth:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1664
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1665
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1666
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1667
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkWidth:I

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1668
    const/4 v3, 0x3

    .line 1669
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 1670
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_ObjectHeight:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1671
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1672
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1673
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1674
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkHeight:I

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1675
    const/4 v3, 0x4

    .line 1676
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 1677
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_GraphicID:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1678
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1679
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1680
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1681
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1682
    const/4 v3, 0x5

    .line 1683
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableWatermark()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1684
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 1685
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_Opacity:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1686
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1687
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1688
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1689
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1708
    :goto_f
    const/4 v3, 0x6

    .line 1709
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 1710
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CanvasWidth:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1711
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1712
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1713
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1714
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x780

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1715
    const/4 v3, 0x7

    .line 1716
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 1717
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CanvasHeight:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1718
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1719
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1720
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1721
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x438

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1722
    const/16 v3, 0x8

    .line 1723
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 1724
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_TranslateZ:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1725
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1726
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1727
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1728
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0xa

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1730
    const/16 v3, 0x9

    .line 1731
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 1732
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1733
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1734
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1735
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1736
    aget-object v2, v7, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1738
    return-object v7

    .line 791
    :cond_e
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x64

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_2

    .line 798
    :cond_f
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0x64

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_3

    .line 871
    :cond_10
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x64

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_4

    .line 878
    :cond_11
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0x64

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_5

    .line 968
    :cond_12
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x64

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_6

    .line 975
    :cond_13
    aget-object v8, v7, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0x64

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_7

    .line 1128
    :cond_14
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_8

    .line 1203
    :cond_15
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_9

    .line 1301
    :cond_16
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_a

    .line 1421
    :cond_17
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_b

    .line 1512
    :cond_18
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_c

    .line 1609
    :cond_19
    aget-object v4, v7, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_d

    .line 1691
    :cond_1a
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 1692
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_Opacity:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1693
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1694
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1695
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1696
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1697
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1698
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1699
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getSegValueForFadeIn()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1700
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1701
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1702
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getSegValueForFadeOut()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1703
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1704
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v6, v4, v5

    .line 1705
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1706
    aget-object v4, v7, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_f

    :cond_1b
    move v2, v4

    goto/16 :goto_e

    :cond_1c
    move v5, v3

    goto/16 :goto_1

    :cond_1d
    move v6, v4

    move v4, v3

    goto/16 :goto_0
.end method

.method public static makeResource(Landroid/content/Context;)V
    .locals 18

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 75
    invoke-static/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInternalAppCacheFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    sput-object v2, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    .line 76
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-wide v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->dataStartTime:D

    double-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v14, v2, v4

    .line 79
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Location ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/high16 v2, 0x42f00000    # 120.0f

    sput v2, Lcom/muvee/mvdronecomposer/theme/simple;->d:F

    .line 83
    const-string v2, ""

    .line 84
    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1b

    .line 85
    const-string v3, "Lat: %f, Long: %f"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v5, 0x1

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 87
    :goto_0
    const-string v2, ""

    .line 88
    const-string v2, ""

    .line 89
    const-string v2, ""

    .line 90
    const-string v2, ""

    .line 91
    const-string v2, ""

    .line 93
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 94
    const/4 v2, -0x1

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    sget v2, Lcom/muvee/mvdronecomposer/theme/simple;->d:F

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 100
    :try_start_0
    new-instance v3, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 102
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    const-string v4, "::makeResource:: geocoder.isPresent() false!!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    const/4 v4, 0x0

    .line 107
    const/4 v2, 0x0

    move v10, v2

    move-object v2, v4

    :goto_1
    const/16 v4, 0xa

    if-ge v10, v4, :cond_1

    .line 108
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2

    .line 109
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 110
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::makeResource:: tried "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v10, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times for getting location"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 116
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    .line 117
    invoke-virtual {v2}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v9

    .line 118
    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {v2}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-virtual {v2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v6

    .line 122
    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    .line 123
    sget-object v7, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "::makeResource:: featureName: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", locality: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", subThoroughfare: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", adminArea: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subAdminArea: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", countryName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 148
    :cond_2
    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v11, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 149
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget v4, Lcom/muvee/mvdronecomposer/theme/simple;->c:I

    if-le v3, v4, :cond_6

    .line 150
    sget v3, Lcom/muvee/mvdronecomposer/theme/simple;->d:F

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float/2addr v3, v4

    sput v3, Lcom/muvee/mvdronecomposer/theme/simple;->d:F

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 151
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v11, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_3

    .line 107
    :cond_3
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto/16 :goto_1

    .line 129
    :cond_4
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v5, ","

    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 142
    :cond_5
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: addresses is NULL!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v9

    goto :goto_2

    .line 144
    :catch_0
    move-exception v2

    move-object v3, v2

    move-object v2, v9

    .line 145
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 154
    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 155
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 156
    sget v5, Lcom/muvee/mvdronecomposer/theme/simple;->b:I

    sub-int/2addr v5, v3

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x40e00000    # 7.0f

    add-float/2addr v5, v6

    .line 157
    sget v6, Lcom/muvee/mvdronecomposer/theme/simple;->c:I

    sub-int/2addr v6, v4

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 159
    sget v7, Lcom/muvee/mvdronecomposer/theme/simple;->c:I

    sget v8, Lcom/muvee/mvdronecomposer/theme/simple;->b:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 160
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 162
    sget-object v9, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "::makeResource:: bgLocationHeight: "

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v16, Lcom/muvee/mvdronecomposer/theme/simple;->b:I

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v16, ", bgLocationWidth: "

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v16, Lcom/muvee/mvdronecomposer/theme/simple;->c:I

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v16, ", textFeatureNameHeight: "

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ", textFeatureNameWidth: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget v3, Lcom/muvee/mvdronecomposer/theme/simple;->b:I

    int-to-float v3, v3

    sub-float/2addr v3, v5

    invoke-virtual {v8, v2, v6, v3, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 169
    :try_start_2
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/styles/simple/txt_location_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 172
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v7, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 174
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    const-string v6, "/styles/simple/txt_location.png"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 176
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 177
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    if-eqz v7, :cond_7

    .line 182
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    :cond_7
    :goto_4
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Location --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Date ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v2, "dd MMMM yyyy"

    invoke-static {v2, v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::makeResource:: dataStartTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", startTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 194
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    sget v4, Lcom/muvee/mvdronecomposer/theme/simple;->g:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 196
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 197
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 199
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 201
    sget v5, Lcom/muvee/mvdronecomposer/theme/simple;->f:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/simple;->e:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 202
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 204
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 205
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 206
    sget v8, Lcom/muvee/mvdronecomposer/theme/simple;->e:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x40e00000    # 7.0f

    add-float/2addr v8, v9

    .line 207
    sget v9, Lcom/muvee/mvdronecomposer/theme/simple;->f:I

    sub-int/2addr v9, v4

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 209
    sget-object v10, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "::makeResource:: textDateHeight: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", textDateWidth: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", offsetDateHeight: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", offsetDateWidth: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget v4, Lcom/muvee/mvdronecomposer/theme/simple;->e:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v9, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 214
    :try_start_3
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/simple/txt_date_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".png"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 216
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 217
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 219
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    const-string v7, "/styles/simple/txt_date.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 221
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 222
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 226
    if-eqz v5, :cond_8

    .line 227
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 231
    :cond_8
    :goto_5
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Date --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max speed value ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v2, "Max. Speed "

    .line 236
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 237
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    sget v4, Lcom/muvee/mvdronecomposer/theme/simple;->m:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 239
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 242
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 244
    sget-object v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget v5, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->maxSpeed:F

    invoke-static {v5}, Lcom/muvee/mvdronecomposer/theme/simple;->convertKphToMs(F)Ljava/lang/String;

    move-result-object v5

    .line 245
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 246
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    sget v7, Lcom/muvee/mvdronecomposer/theme/simple;->m:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 248
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 249
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 250
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 252
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v5, v8, v9, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 254
    sget v8, Lcom/muvee/mvdronecomposer/theme/simple;->l:I

    sget v9, Lcom/muvee/mvdronecomposer/theme/simple;->k:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 255
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 257
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 258
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 259
    sget v11, Lcom/muvee/mvdronecomposer/theme/simple;->k:I

    sub-int v10, v11, v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x41200000    # 10.0f

    add-float/2addr v10, v11

    .line 260
    const/high16 v10, 0x41200000    # 10.0f

    .line 262
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 263
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 264
    sget v14, Lcom/muvee/mvdronecomposer/theme/simple;->k:I

    sub-int/2addr v14, v11

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    const/high16 v15, 0x41200000    # 10.0f

    add-float/2addr v14, v15

    .line 265
    add-int/lit8 v4, v4, 0x1e

    int-to-float v4, v4

    .line 267
    sget-object v15, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "::makeResource:: bgFlightDataValueHeight: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/muvee/mvdronecomposer/theme/simple;->k:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", bgFlightDataValueWidth: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/muvee/mvdronecomposer/theme/simple;->l:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", textMaxSpeedValueHeight: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", textMaxSpeedValueWidth: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", offsetMaxSpeedValueHeight: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", offsetMaxSpeedValueWidth: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget v7, Lcom/muvee/mvdronecomposer/theme/simple;->k:I

    int-to-float v7, v7

    sub-float/2addr v7, v14

    invoke-virtual {v9, v2, v10, v7, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 271
    sget v2, Lcom/muvee/mvdronecomposer/theme/simple;->k:I

    int-to-float v2, v2

    sub-float/2addr v2, v14

    invoke-virtual {v9, v5, v4, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 274
    :try_start_4
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/styles/simple/txt_max_speed_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 277
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v8, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 279
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    const-string v6, "/styles/simple/txt_max_speed.png"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 281
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 282
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 286
    if-eqz v8, :cond_9

    .line 287
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 291
    :cond_9
    :goto_6
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max speed value --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max altitude value ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v2, "Max. Altitude "

    .line 296
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 297
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    sget v4, Lcom/muvee/mvdronecomposer/theme/simple;->m:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 299
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 300
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 302
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget v6, v6, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->maxAltitude:F

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 305
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 306
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    sget v7, Lcom/muvee/mvdronecomposer/theme/simple;->m:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 308
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 309
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 310
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 312
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v5, v8, v9, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 314
    sget v8, Lcom/muvee/mvdronecomposer/theme/simple;->l:I

    sget v9, Lcom/muvee/mvdronecomposer/theme/simple;->k:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 315
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 317
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 318
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 319
    sget v11, Lcom/muvee/mvdronecomposer/theme/simple;->k:I

    sub-int v10, v11, v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x40e00000    # 7.0f

    add-float/2addr v10, v11

    .line 320
    const/high16 v10, 0x41200000    # 10.0f

    .line 322
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 323
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 324
    sget v14, Lcom/muvee/mvdronecomposer/theme/simple;->k:I

    sub-int/2addr v14, v11

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    const/high16 v15, 0x40e00000    # 7.0f

    add-float/2addr v14, v15

    .line 325
    add-int/lit8 v4, v4, 0x1e

    int-to-float v4, v4

    .line 327
    sget-object v15, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "::makeResource:: bgFlightDataValueHeight: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/muvee/mvdronecomposer/theme/simple;->k:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", bgFlightDataValueWidth: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/muvee/mvdronecomposer/theme/simple;->l:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", textMaxAltitudeValueHeight: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", textMaxAltitudeValueWidth: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", offsetMaxAltitudeValueHeight: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", offsetMaxAltitudeValueWidth: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget v7, Lcom/muvee/mvdronecomposer/theme/simple;->k:I

    int-to-float v7, v7

    sub-float/2addr v7, v14

    invoke-virtual {v9, v2, v10, v7, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 331
    sget v2, Lcom/muvee/mvdronecomposer/theme/simple;->k:I

    int-to-float v2, v2

    sub-float/2addr v2, v14

    invoke-virtual {v9, v5, v4, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 334
    :try_start_5
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/styles/simple/txt_max_altitude_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 336
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 337
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v8, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 339
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    const-string v6, "/styles/simple/txt_max_altitude.png"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 341
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 342
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 346
    if-eqz v8, :cond_a

    .line 347
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 351
    :cond_a
    :goto_7
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max altitude value --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: map trace ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    sget v2, Lcom/muvee/mvdronecomposer/theme/simple;->o:I

    sget v3, Lcom/muvee/mvdronecomposer/theme/simple;->n:I

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/muvee/mvdronecomposer/theme/diagonal;->getBitmapFromURL(IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 357
    if-eqz v3, :cond_11

    .line 359
    :try_start_6
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/simple/img_map_trace_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 361
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 362
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v3, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 364
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    const-string v7, "/styles/simple/img_map_trace.png"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 366
    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 367
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 371
    if-eqz v3, :cond_b

    .line 372
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 434
    :cond_b
    :goto_8
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: map trace --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::makeResource:: taken time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milliseconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void

    .line 178
    :catch_1
    move-exception v2

    .line 179
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 181
    if-eqz v7, :cond_7

    .line 182
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_4

    .line 181
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_c

    .line 182
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 183
    :cond_c
    throw v2

    .line 223
    :catch_2
    move-exception v2

    .line 224
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 226
    if-eqz v5, :cond_8

    .line 227
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_5

    .line 226
    :catchall_1
    move-exception v2

    if-eqz v5, :cond_d

    .line 227
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 228
    :cond_d
    throw v2

    .line 283
    :catch_3
    move-exception v2

    .line 284
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 286
    if-eqz v8, :cond_9

    .line 287
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_6

    .line 286
    :catchall_2
    move-exception v2

    if-eqz v8, :cond_e

    .line 287
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 288
    :cond_e
    throw v2

    .line 343
    :catch_4
    move-exception v2

    .line 344
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 346
    if-eqz v8, :cond_a

    .line 347
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_7

    .line 346
    :catchall_3
    move-exception v2

    if-eqz v8, :cond_f

    .line 347
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 348
    :cond_f
    throw v2

    .line 368
    :catch_5
    move-exception v2

    .line 369
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 371
    if-eqz v3, :cond_b

    .line 372
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_8

    .line 371
    :catchall_4
    move-exception v2

    if-eqz v3, :cond_10

    .line 372
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 373
    :cond_10
    throw v2

    .line 377
    :cond_11
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    const-string v4, "/styles/diagonal/pin_a.png"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 378
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    const-string v5, "/styles/diagonal/pin_b.png"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 381
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 383
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 384
    const/4 v2, -0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 386
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 388
    sget v2, Lcom/muvee/mvdronecomposer/theme/simple;->o:I

    sget v3, Lcom/muvee/mvdronecomposer/theme/simple;->n:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 389
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 390
    const/16 v3, 0xb4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 392
    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_15

    .line 393
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::makeResource:: bgMapTraceWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/muvee/mvdronecomposer/theme/simple;->o:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bgMapTraceHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/muvee/mvdronecomposer/theme/simple;->n:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget v3, Lcom/muvee/mvdronecomposer/theme/simple;->o:I

    sget v4, Lcom/muvee/mvdronecomposer/theme/simple;->n:I

    invoke-static {v3, v4}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->setDrawblePointXY(II)V

    .line 395
    const/4 v3, 0x0

    move v8, v3

    :goto_9
    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    if-ge v8, v3, :cond_12

    .line 396
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::makeResource:: drawblePointX["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    aget-wide v14, v5, v8

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", drawblePointY["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    aget-wide v14, v5, v8

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", drawblePointX["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    add-int/lit8 v6, v8, 0x1

    aget-wide v14, v5, v6

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", drawblePointY["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    add-int/lit8 v6, v8, 0x1

    aget-wide v14, v5, v6

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    aget-wide v4, v3, v8

    double-to-float v3, v4

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    aget-wide v4, v4, v8

    double-to-float v4, v4

    sget-object v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    add-int/lit8 v6, v8, 0x1

    aget-wide v14, v5, v6

    double-to-float v5, v14

    sget-object v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    add-int/lit8 v14, v8, 0x1

    aget-wide v14, v6, v14

    double-to-float v6, v14

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 395
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto/16 :goto_9

    .line 400
    :cond_12
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    double-to-float v3, v4

    const/high16 v4, 0x41800000    # 16.0f

    sub-float/2addr v3, v4

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    double-to-float v4, v4

    const/high16 v5, 0x42000000    # 32.0f

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v10, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 401
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    aget-wide v4, v3, v4

    double-to-float v3, v4

    const/high16 v4, 0x41800000    # 16.0f

    sub-float/2addr v3, v4

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    sget v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    aget-wide v4, v4, v5

    double-to-float v4, v4

    const/high16 v5, 0x42000000    # 32.0f

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v11, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 403
    invoke-static {v9}, Lcom/muvee/mvdronecomposer/theme/diagonal;->getCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v3, v2

    .line 408
    :goto_a
    :try_start_c
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/simple/img_map_trace_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 410
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 411
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v3, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 413
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/simple;->r:Ljava/io/File;

    const-string v7, "/styles/simple/img_map_trace.png"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 415
    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 416
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 420
    if-eqz v3, :cond_13

    .line 421
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 424
    :cond_13
    if-eqz v10, :cond_14

    .line 425
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 428
    :cond_14
    if-eqz v11, :cond_b

    .line 429
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_8

    .line 405
    :cond_15
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/simple;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: location data wrong!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v9

    goto :goto_a

    .line 417
    :catch_6
    move-exception v2

    .line 418
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 420
    if-eqz v3, :cond_16

    .line 421
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 424
    :cond_16
    if-eqz v10, :cond_17

    .line 425
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 428
    :cond_17
    if-eqz v11, :cond_b

    .line 429
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_8

    .line 420
    :catchall_5
    move-exception v2

    if-eqz v3, :cond_18

    .line 421
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 424
    :cond_18
    if-eqz v10, :cond_19

    .line 425
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 428
    :cond_19
    if-eqz v11, :cond_1a

    .line 429
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 430
    :cond_1a
    throw v2

    :cond_1b
    move-object v9, v2

    goto/16 :goto_0
.end method
