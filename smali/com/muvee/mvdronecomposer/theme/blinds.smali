.class public Lcom/muvee/mvdronecomposer/theme/blinds;
.super Ljava/lang/Object;
.source "blinds.java"


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

.field private static s:F

.field private static t:I

.field private static u:I

.field private static v:I

.field private static w:I

.field private static x:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x1fc

    const/16 v2, 0x62

    const/high16 v1, 0x42480000    # 50.0f

    .line 48
    const-class v0, Lcom/muvee/mvdronecomposer/theme/blinds;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    .line 50
    sput v2, Lcom/muvee/mvdronecomposer/theme/blinds;->b:I

    .line 51
    sput v3, Lcom/muvee/mvdronecomposer/theme/blinds;->c:I

    .line 52
    sput v1, Lcom/muvee/mvdronecomposer/theme/blinds;->d:F

    .line 53
    const/16 v0, 0x41

    sput v0, Lcom/muvee/mvdronecomposer/theme/blinds;->e:I

    .line 54
    const/16 v0, 0x1f8

    sput v0, Lcom/muvee/mvdronecomposer/theme/blinds;->f:I

    .line 55
    sput v1, Lcom/muvee/mvdronecomposer/theme/blinds;->g:F

    .line 56
    sput v2, Lcom/muvee/mvdronecomposer/theme/blinds;->h:I

    .line 57
    sput v3, Lcom/muvee/mvdronecomposer/theme/blinds;->i:I

    .line 58
    sput v1, Lcom/muvee/mvdronecomposer/theme/blinds;->j:F

    .line 59
    sget v0, Lcom/muvee/mvdronecomposer/theme/blinds;->h:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/blinds;->k:I

    .line 60
    sget v0, Lcom/muvee/mvdronecomposer/theme/blinds;->i:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/blinds;->l:I

    .line 61
    sget v0, Lcom/muvee/mvdronecomposer/theme/blinds;->j:F

    sput v0, Lcom/muvee/mvdronecomposer/theme/blinds;->m:F

    .line 62
    sget v0, Lcom/muvee/mvdronecomposer/theme/blinds;->e:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/blinds;->n:I

    .line 63
    sget v0, Lcom/muvee/mvdronecomposer/theme/blinds;->f:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/blinds;->o:I

    .line 64
    sget v0, Lcom/muvee/mvdronecomposer/theme/blinds;->g:F

    sput v0, Lcom/muvee/mvdronecomposer/theme/blinds;->p:F

    .line 65
    sget v0, Lcom/muvee/mvdronecomposer/theme/blinds;->h:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/blinds;->q:I

    .line 66
    sget v0, Lcom/muvee/mvdronecomposer/theme/blinds;->i:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/blinds;->r:I

    .line 67
    sget v0, Lcom/muvee/mvdronecomposer/theme/blinds;->j:F

    sput v0, Lcom/muvee/mvdronecomposer/theme/blinds;->s:F

    .line 68
    const/16 v0, 0x109

    sput v0, Lcom/muvee/mvdronecomposer/theme/blinds;->t:I

    .line 69
    const/16 v0, 0x16c

    sput v0, Lcom/muvee/mvdronecomposer/theme/blinds;->u:I

    .line 71
    const/16 v0, 0x60

    sput v0, Lcom/muvee/mvdronecomposer/theme/blinds;->v:I

    .line 72
    const/16 v0, 0x37

    sput v0, Lcom/muvee/mvdronecomposer/theme/blinds;->w:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertKphToMs(F)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2125
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    const/high16 v1, 0x45610000    # 3600.0f

    div-float/2addr v0, v1

    .line 2126
    sget-object v1, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

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

    .line 2127
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

    .line 2118
    rem-long v0, p0, v2

    .line 2119
    div-long v0, p0, v2

    rem-long/2addr v0, v2

    .line 2120
    const-wide/16 v2, 0xe10

    div-long v2, p0, v2

    const-wide/16 v4, 0x18

    rem-long/2addr v2, v4

    .line 2121
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
    .locals 17

    .prologue
    .line 596
    const/4 v1, 0x1

    .line 598
    const/4 v0, 0x0

    .line 599
    sget-boolean v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_IN_EFFECT_WHEN_START:Z

    if-eqz v2, :cond_0

    .line 600
    const/4 v1, 0x2

    .line 601
    sget v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->VIDEO_FADE_IN_DURATION:I

    .line 604
    :cond_0
    const/4 v2, 0x0

    .line 605
    sget-boolean v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_OUT_EFFECT_WHEN_CLOSE:Z

    if-eqz v3, :cond_1e

    .line 606
    add-int/lit8 v2, v1, 0x1

    .line 607
    sget v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->VIDEO_FADE_OUT_DURATION:I

    move v3, v1

    .line 610
    :goto_0
    const/4 v1, 0x0

    .line 611
    sub-long v4, p1, p3

    int-to-long v6, v0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f40

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 612
    const/4 v1, 0x1

    .line 613
    add-int/lit8 v2, v2, 0x1

    .line 616
    :cond_1
    sget-object v4, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::getEffectDescriptions:: effectNum: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-array v4, v2, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    .line 620
    const/4 v2, -0x1

    .line 623
    sget-boolean v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_IN_EFFECT_WHEN_START:Z

    if-eqz v5, :cond_2

    .line 625
    const/4 v2, 0x0

    .line 628
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v5, v4, v2

    .line 629
    aget-object v5, v4, v2

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 630
    aget-object v5, v4, v2

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 632
    const/16 v5, 0xc

    .line 633
    aget-object v6, v4, v2

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v5, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 635
    const/4 v5, 0x0

    .line 636
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 637
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 638
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 639
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 640
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 641
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, -0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 642
    const/4 v5, 0x1

    .line 643
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 644
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_RGBColorR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 645
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 646
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 647
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 648
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 649
    const/4 v5, 0x2

    .line 650
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 651
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorIntensityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 652
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 653
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 654
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 655
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x64

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 656
    const/4 v5, 0x3

    .line 657
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 658
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorLayer:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 659
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 660
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 661
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 662
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x2

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 663
    const/4 v5, 0x4

    .line 664
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 665
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 666
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 667
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 668
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 669
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 670
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x1f4

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 671
    const/4 v5, 0x5

    .line 672
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 673
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 674
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 675
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 676
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 677
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 678
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x1f4

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 679
    const/4 v5, 0x6

    .line 680
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 681
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 682
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 683
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 684
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 685
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 686
    const/4 v5, 0x7

    .line 687
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 688
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 689
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 690
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 691
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 692
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 693
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x3e8

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 694
    const/16 v5, 0x8

    .line 695
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 696
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 697
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 698
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 699
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 700
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 701
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x3e8

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 702
    const/16 v5, 0x9

    .line 703
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 704
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 705
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x2

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 706
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 707
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 708
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 709
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x64

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 710
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 711
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x3e8

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 712
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 713
    const/16 v5, 0xa

    .line 714
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 715
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 716
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 717
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 718
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 719
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x8

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 720
    const/16 v5, 0xb

    .line 721
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 722
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 723
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 724
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 725
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 726
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 729
    :cond_2
    sget-boolean v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_OUT_EFFECT_WHEN_CLOSE:Z

    if-eqz v5, :cond_3

    .line 731
    add-int/lit8 v2, v2, 0x1

    .line 734
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v5, v4, v2

    .line 735
    aget-object v5, v4, v2

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 736
    aget-object v5, v4, v2

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    sub-long v8, p1, p3

    int-to-long v10, v3

    sub-long/2addr v8, v10

    long-to-int v3, v8

    sub-long v8, p1, p3

    long-to-int v7, v8

    invoke-direct {v6, v3, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 738
    const/16 v3, 0xc

    .line 739
    aget-object v5, v4, v2

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v3, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 741
    const/4 v3, 0x0

    .line 742
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 743
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 744
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 745
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 746
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 747
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/4 v5, -0x1

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 748
    const/4 v3, 0x1

    .line 749
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 750
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_RGBColorR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 751
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 752
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 753
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 754
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/4 v5, 0x0

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 755
    const/4 v3, 0x2

    .line 756
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 757
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorIntensityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 758
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 759
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 760
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 761
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/16 v5, 0x64

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 762
    const/4 v3, 0x3

    .line 763
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 764
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorLayer:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 765
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 766
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 767
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 768
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/4 v5, 0x2

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 769
    const/4 v3, 0x4

    .line 770
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 771
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 772
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 773
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 774
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 775
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 776
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/16 v5, 0x1f4

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 777
    const/4 v3, 0x5

    .line 778
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 779
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 780
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 781
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 782
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 783
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 784
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/16 v5, 0x1f4

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 785
    const/4 v3, 0x6

    .line 786
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 787
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 788
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 789
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 790
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 791
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/4 v5, 0x1

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 792
    const/4 v3, 0x7

    .line 793
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 794
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 795
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 796
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 797
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 798
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 799
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/16 v5, 0x3e8

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 800
    const/16 v3, 0x8

    .line 801
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 802
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 803
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 804
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 805
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 806
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 807
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/16 v5, 0x3e8

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 808
    const/16 v3, 0x9

    .line 809
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 810
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 811
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x2

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 812
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 813
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 814
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 815
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 816
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 817
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/16 v6, 0x3e8

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 818
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    const/16 v5, 0x64

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 819
    const/16 v3, 0xa

    .line 820
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 821
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 822
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 823
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 824
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 825
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/16 v5, 0x8

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 826
    const/16 v3, 0xb

    .line 827
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 828
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 829
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 830
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 831
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 832
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/4 v5, 0x0

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 835
    :cond_3
    if-eqz v1, :cond_1d

    .line 837
    add-int/lit8 v1, v2, 0x1

    .line 840
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::getEffectDescriptions:: Flight data info++ effectNo: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v2, v4, v1

    .line 843
    aget-object v2, v4, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 844
    aget-object v2, v4, v1

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    add-int/lit16 v5, v0, 0x7d0

    add-int/lit16 v0, v0, 0x1b58

    invoke-direct {v3, v5, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 846
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 847
    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v2

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 848
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 849
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v5, "/styles/blinds/img_location_bg.png"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 851
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 852
    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 853
    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 854
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v6, "/styles/blinds/img_datetime_bg.png"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 856
    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 857
    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 858
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 859
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v7, "/styles/blinds/img_data_bg.png"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 861
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 862
    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 863
    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 864
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v8, "/styles/blinds/img_mapbg.png"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 866
    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 867
    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 868
    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 869
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v9, "/styles/blinds/txt_location.png"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 871
    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 872
    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 873
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 874
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v10, "/styles/blinds/txt_date.png"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 876
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 877
    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 878
    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 879
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v11, "/styles/blinds/txt_time.png"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 881
    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 882
    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 883
    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 884
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v12, "/styles/blinds/txt_max_speed_value.png"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 886
    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 887
    sget-object v11, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v11

    iput v11, v10, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 888
    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v11, v10, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 889
    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v13, "/styles/blinds/txt_max_altitude_value.png"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 891
    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 892
    sget-object v12, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v12}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v12

    iput v12, v11, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 893
    new-instance v12, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v12, v11, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 894
    new-instance v12, Ljava/io/File;

    sget-object v13, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v14, "/styles/blinds/txt_flight_time.png"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 896
    new-instance v12, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v12}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 897
    sget-object v13, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v13}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v13

    iput v13, v12, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 898
    new-instance v13, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v13, v12, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 899
    new-instance v13, Ljava/io/File;

    sget-object v14, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v15, "/styles/blinds/img_map_trace.png"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 901
    aget-object v13, v4, v1

    const/16 v14, 0xb

    new-array v14, v14, [Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    const/4 v0, 0x1

    aput-object v2, v14, v0

    const/4 v0, 0x2

    aput-object v3, v14, v0

    const/4 v0, 0x3

    aput-object v5, v14, v0

    const/4 v0, 0x4

    aput-object v6, v14, v0

    const/4 v0, 0x5

    aput-object v7, v14, v0

    const/4 v0, 0x6

    aput-object v8, v14, v0

    const/4 v0, 0x7

    aput-object v9, v14, v0

    const/16 v0, 0x8

    aput-object v10, v14, v0

    const/16 v0, 0x9

    aput-object v11, v14, v0

    const/16 v0, 0xa

    aput-object v12, v14, v0

    iput-object v14, v13, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->resourceList:[Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    .line 905
    const/16 v0, 0x5c

    .line 906
    aget-object v2, v4, v1

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v0, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 909
    const/4 v0, 0x0

    .line 910
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 911
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 912
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 913
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 914
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 915
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 916
    const/4 v0, 0x1

    .line 917
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 918
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 919
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 920
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 921
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 922
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 923
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xee

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 924
    const/4 v0, 0x2

    .line 925
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 926
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 927
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 928
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x5

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 929
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 930
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 931
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 932
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x96

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 933
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 934
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xa

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 935
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x96

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 936
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 937
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x46

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 938
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xf0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 939
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 940
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x398

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 941
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0xf0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 942
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 943
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 944
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x96

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 945
    const/4 v0, 0x3

    .line 946
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 947
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 948
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 949
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 950
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 951
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 952
    const/4 v0, 0x4

    .line 953
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 954
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 955
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 956
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 957
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 958
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 959
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x109

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 960
    const/4 v0, 0x5

    .line 961
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 962
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 963
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 964
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 965
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 966
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 967
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x5b

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 968
    const/4 v0, 0x6

    .line 969
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 970
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 971
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 972
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 973
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v2

    if-nez v2, :cond_4

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    .line 975
    :cond_4
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 979
    :goto_1
    const/4 v0, 0x7

    .line 980
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 981
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY31:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 982
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x5

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 983
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 984
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 985
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 986
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 987
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 988
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xa

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 989
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 990
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 991
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x46

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 992
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 993
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 994
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x398

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 995
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 996
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 997
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 998
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1001
    const/16 v0, 0x8

    .line 1002
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1003
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1004
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1005
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1006
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1007
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1008
    const/16 v0, 0x9

    .line 1009
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1010
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1011
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1012
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1013
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1014
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1015
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xee

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1016
    const/16 v0, 0xa

    .line 1017
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1018
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1019
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1020
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x5

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1021
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1022
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1023
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1024
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0xe4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1025
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1026
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x50

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1027
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xe4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1028
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1029
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x8c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1030
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xa8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1031
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1032
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x398

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1033
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0xa8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1034
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1035
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1036
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0xe4

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1037
    const/16 v0, 0xb

    .line 1038
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1039
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1040
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1041
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1042
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1043
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1044
    const/16 v0, 0xc

    .line 1045
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1046
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1047
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1048
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1049
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1050
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1051
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x107

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1052
    const/16 v0, 0xd

    .line 1053
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1054
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1055
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1056
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1057
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1058
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1059
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x3c

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1060
    const/16 v0, 0xe

    .line 1061
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1062
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1063
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1064
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1065
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1066
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v2

    if-nez v2, :cond_5

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    .line 1067
    :cond_5
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1071
    :goto_2
    const/16 v0, 0xf

    .line 1072
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1073
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY02:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1074
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x5

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1075
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1076
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1077
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1078
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1079
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1080
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x50

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1081
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1082
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1083
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x8c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1084
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1085
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1086
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x398

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1087
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1088
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1089
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1090
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1093
    const/16 v0, 0x10

    .line 1094
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1095
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1096
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1097
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1098
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1099
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1100
    const/16 v0, 0x11

    .line 1101
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1102
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1103
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1104
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1105
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1106
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1107
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1108
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0xf0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1109
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1110
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x8c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1111
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xf0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1112
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1113
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xdc

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1114
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x1f4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1115
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1116
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x33e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1117
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x1f4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1118
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1119
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x38e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1120
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0xf0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1121
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1122
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1123
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0xf0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1124
    const/16 v0, 0x12

    .line 1125
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1126
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1127
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1128
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1129
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1130
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1131
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xd2

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1132
    const/16 v0, 0x13

    .line 1133
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1134
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1135
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1136
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1137
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1138
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1139
    const/16 v0, 0x14

    .line 1140
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1141
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1142
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1143
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1144
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1145
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1146
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x109

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1147
    const/16 v0, 0x15

    .line 1148
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1149
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1150
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1151
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1152
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1153
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1154
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x5b

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1155
    const/16 v0, 0x16

    .line 1156
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1157
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1158
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1159
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1160
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1161
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1162
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1166
    :goto_3
    const/16 v0, 0x17

    .line 1167
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1168
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX03:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1169
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1170
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1171
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1172
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1173
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1174
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1175
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x8c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1176
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1177
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1178
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xdc

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1179
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1180
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1181
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x33e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1182
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1183
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1184
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x38e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1185
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1186
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1187
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1188
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1191
    const/16 v0, 0x18

    .line 1192
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1193
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1194
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1195
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1196
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1197
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1198
    const/16 v0, 0x19

    .line 1199
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1200
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1201
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1202
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1203
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1204
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1205
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x352

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1206
    const/16 v0, 0x1a

    .line 1207
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1208
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1209
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1210
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1211
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1212
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1213
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xc8

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1214
    const/16 v0, 0x1b

    .line 1215
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1216
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1217
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1218
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1219
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1220
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1221
    const/16 v0, 0x1c

    .line 1222
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1223
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1224
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1225
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1226
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1227
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1228
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xbe

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1229
    const/16 v0, 0x1d

    .line 1230
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1231
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1232
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1233
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1234
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1235
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1236
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1237
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1238
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1239
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x6e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1240
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1241
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1242
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xbe

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1243
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xf5

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1244
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1245
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x37a

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1246
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0xf5

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1247
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1248
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x3ca

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1249
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1250
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1251
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1252
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1253
    const/16 v0, 0x1e

    .line 1254
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1255
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1256
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1257
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1258
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1259
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v2

    if-nez v2, :cond_6

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    .line 1260
    :cond_6
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1266
    :goto_4
    const/16 v0, 0x1f

    .line 1267
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1268
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1269
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1270
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1271
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1272
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1273
    const/16 v0, 0x20

    .line 1274
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1275
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1276
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1277
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1278
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1279
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1280
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xee

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1281
    const/16 v0, 0x21

    .line 1282
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1283
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1284
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1285
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1286
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1287
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1288
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1289
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x96

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1290
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1291
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xa

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1292
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x96

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1293
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1294
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x46

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1295
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xf0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1296
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1297
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1298
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0xf0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1299
    const/16 v0, 0x22

    .line 1300
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1301
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1302
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1303
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1304
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1305
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1306
    const/16 v0, 0x23

    .line 1307
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1308
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1309
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1310
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1311
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1312
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1313
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x109

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1314
    const/16 v0, 0x24

    .line 1315
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1316
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1317
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1318
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1319
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1320
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1321
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x5b

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1322
    const/16 v0, 0x25

    .line 1323
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1324
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1325
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1326
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1327
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1328
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1329
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v2

    if-nez v2, :cond_7

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    .line 1330
    :cond_7
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1334
    :goto_5
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1335
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x37a

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1336
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v2

    if-nez v2, :cond_8

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    .line 1337
    :cond_8
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1341
    :goto_6
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1342
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x3ac

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1343
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1344
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1345
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1346
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1347
    const/16 v0, 0x26

    .line 1348
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1349
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY35:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1350
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1351
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1352
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1353
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1354
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1355
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1356
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xa

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1357
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1358
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1359
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x46

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1360
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1361
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1362
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1363
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1366
    const/16 v0, 0x27

    .line 1367
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1368
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1369
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1370
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1371
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1372
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1373
    const/16 v0, 0x28

    .line 1374
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1375
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1376
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1377
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1378
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1379
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1380
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xee

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1381
    const/16 v0, 0x29

    .line 1382
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1383
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1384
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1385
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1386
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1387
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1388
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1389
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0xe4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1390
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1391
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x50

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1392
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xe4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1393
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1394
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x8c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1395
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xa8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1396
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1397
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x186

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1398
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0xa8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1399
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1400
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x1b8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1401
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x76

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1402
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1403
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1404
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x76

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1405
    const/16 v0, 0x2a

    .line 1406
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1407
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1408
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1409
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1410
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1411
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1412
    const/16 v0, 0x2b

    .line 1413
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1414
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1415
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1416
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1417
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1418
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1419
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x107

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1420
    const/16 v0, 0x2c

    .line 1421
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1422
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1423
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1424
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1425
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1426
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1427
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x3c

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1428
    const/16 v0, 0x2d

    .line 1429
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1430
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1431
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1432
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1433
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1434
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v2

    if-nez v2, :cond_9

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    .line 1435
    :cond_9
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1439
    :goto_7
    const/16 v0, 0x2e

    .line 1440
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1441
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY06:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1442
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1443
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1444
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1445
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1446
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1447
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1448
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x50

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1449
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1450
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1451
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x8c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1452
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1453
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1454
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1455
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1456
    const/16 v0, 0x2f

    .line 1457
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1458
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY36:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1459
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1460
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1461
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1462
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1463
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1464
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1465
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x186

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1466
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1467
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1468
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x1b8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1469
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1470
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1471
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1472
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1475
    const/16 v0, 0x30

    .line 1476
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1477
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1478
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1479
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1480
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1481
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1482
    const/16 v0, 0x31

    .line 1483
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1484
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1485
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1486
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1487
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1488
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1489
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xee

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1490
    const/16 v0, 0x32

    .line 1491
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1492
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1493
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1494
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1495
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1496
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1497
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1498
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0xe4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1499
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1500
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x1b8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1501
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xe4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1502
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1503
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x226

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1504
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xa8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1505
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1506
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1507
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0xa8

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1508
    const/16 v0, 0x33

    .line 1509
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1510
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1511
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1512
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1513
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1514
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1515
    const/16 v0, 0x34

    .line 1516
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1517
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1518
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1519
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1520
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1521
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1522
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x107

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1523
    const/16 v0, 0x35

    .line 1524
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1525
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1526
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1527
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1528
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1529
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1530
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x3c

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1531
    const/16 v0, 0x36

    .line 1532
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1533
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1534
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1535
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1536
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1537
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1538
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v2

    if-nez v2, :cond_a

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    .line 1539
    :cond_a
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1543
    :goto_8
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1544
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x37a

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1545
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v2

    if-nez v2, :cond_b

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    .line 1546
    :cond_b
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1550
    :goto_9
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1551
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x3ac

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1552
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1553
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1554
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1555
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1556
    const/16 v0, 0x37

    .line 1557
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1558
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY07:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1559
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1560
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1561
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1562
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1563
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1564
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1565
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x1b8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1566
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1567
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1568
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x226

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1569
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1570
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1571
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1572
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1575
    const/16 v0, 0x38

    .line 1576
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1577
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1578
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1579
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1580
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1581
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1582
    const/16 v0, 0x39

    .line 1583
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1584
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1585
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1586
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1587
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1588
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1589
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1590
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0xf0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1591
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1592
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x8c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1593
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xf0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1594
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1595
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xdc

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1596
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x1f4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1597
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1598
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1599
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x1f4

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1600
    const/16 v0, 0x3a

    .line 1601
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1602
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1603
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1604
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1605
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1606
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1607
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1608
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0xd2

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1609
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1610
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x154

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1611
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xd2

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1612
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1613
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x186

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1614
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x82

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1615
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1616
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1617
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x82

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1618
    const/16 v0, 0x3b

    .line 1619
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1620
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1621
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1622
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1623
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1624
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1625
    const/16 v0, 0x3c

    .line 1626
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1627
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1628
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1629
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1630
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1631
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1632
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x109

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1633
    const/16 v0, 0x3d

    .line 1634
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1635
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1636
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1637
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1638
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1639
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1640
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x5b

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1641
    const/16 v0, 0x3e

    .line 1642
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1643
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1644
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1645
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1646
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1647
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1648
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1652
    :goto_a
    const/16 v0, 0x3f

    .line 1653
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1654
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX08:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1655
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1656
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1657
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1658
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1659
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1660
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1661
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x8c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1662
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1663
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1664
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xdc

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1665
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1666
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1667
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1668
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1669
    const/16 v0, 0x40

    .line 1670
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1671
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY38:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1672
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1673
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1674
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1675
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1676
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1677
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1678
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x154

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1679
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1680
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1681
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x186

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1682
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1683
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1684
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1685
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1688
    const/16 v0, 0x41

    .line 1689
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1690
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1691
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1692
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1693
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1694
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1695
    const/16 v0, 0x42

    .line 1696
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1697
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1698
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1699
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1700
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1701
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1702
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x1f4

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1703
    const/16 v0, 0x43

    .line 1704
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1705
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1706
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1707
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1708
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1709
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1710
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1711
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x12c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1712
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1713
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x15e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1714
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x12c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1715
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1716
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x1d6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1717
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xd2

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1718
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1719
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x26c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1720
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0xd2

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1721
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1722
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x29e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1723
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x82

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1724
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1725
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1726
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x82

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1727
    const/16 v0, 0x44

    .line 1728
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1729
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1730
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1731
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1732
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1733
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1734
    const/16 v0, 0x45

    .line 1735
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1736
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1737
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1738
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1739
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1740
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1741
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x109

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1742
    const/16 v0, 0x46

    .line 1743
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1744
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1745
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1746
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1747
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1748
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1749
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x5b

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1750
    const/16 v0, 0x47

    .line 1751
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1752
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1753
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1754
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1755
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1756
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1757
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1761
    :goto_b
    const/16 v0, 0x48

    .line 1762
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1763
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY09:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1764
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1765
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1766
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1767
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1768
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1769
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1770
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x15e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1771
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1772
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1773
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x1d6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1774
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1775
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1776
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1777
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1778
    const/16 v0, 0x49

    .line 1779
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1780
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY39:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1781
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1782
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1783
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1784
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1785
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1786
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1787
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x26c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1788
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1789
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1790
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x29e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1791
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1792
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1793
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1794
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1797
    const/16 v0, 0x4a

    .line 1798
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1799
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1800
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1801
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1802
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1803
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1804
    const/16 v0, 0x4b

    .line 1805
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1806
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1807
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1808
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1809
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1810
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1811
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1812
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x1f4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1813
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1814
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x33e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1815
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x1f4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1816
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1817
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x370

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1818
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xf0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1819
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1820
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1821
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0xf0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1822
    const/16 v0, 0x4c

    .line 1823
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1824
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1825
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1826
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1827
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1828
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1829
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1830
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x12c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1831
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1832
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x276

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1833
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x12c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1834
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1835
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x2ee

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1836
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xd2

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1837
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1838
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1839
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0xd2

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1840
    const/16 v0, 0x4d

    .line 1841
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1842
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1843
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1844
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1845
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1846
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1847
    const/16 v0, 0x4e

    .line 1848
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1849
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1850
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1851
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1852
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1853
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1854
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x109

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1855
    const/16 v0, 0x4f

    .line 1856
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1857
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1858
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1859
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1860
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1861
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1862
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x5b

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1863
    const/16 v0, 0x50

    .line 1864
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1865
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1866
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1867
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1868
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1869
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1870
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1874
    :goto_c
    const/16 v0, 0x51

    .line 1875
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1876
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX010:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1877
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1878
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1879
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1880
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1881
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1882
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1883
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x33e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1884
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1885
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1886
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x370

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1887
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1888
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1889
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1890
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1891
    const/16 v0, 0x52

    .line 1892
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1893
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY010:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1894
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1895
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1896
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1897
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1898
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1899
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1900
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x276

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1901
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1902
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1903
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x2ee

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1904
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1905
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1906
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1907
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1910
    const/16 v0, 0x53

    .line 1911
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1912
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1913
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1914
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1915
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1916
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1917
    const/16 v0, 0x54

    .line 1918
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1919
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1920
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1921
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1922
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1923
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1924
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x352

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1925
    const/16 v0, 0x55

    .line 1926
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1927
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1928
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1929
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1930
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1931
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1932
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xc8

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1933
    const/16 v0, 0x56

    .line 1934
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1935
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1936
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1937
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1938
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1939
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1940
    const/16 v0, 0x57

    .line 1941
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1942
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1943
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1944
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1945
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1946
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1947
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xbe

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1948
    const/16 v0, 0x58

    .line 1949
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1950
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1951
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1952
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1953
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1954
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1955
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xf5

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1956
    const/16 v0, 0x59

    .line 1957
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1958
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1959
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1960
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1961
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1962
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1963
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1964
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1965
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xd2

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1966
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1967
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1968
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xdc

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1969
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v2

    if-nez v2, :cond_c

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    .line 1970
    :cond_c
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1974
    :goto_d
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1975
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x384

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1976
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v2

    if-nez v2, :cond_d

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    .line 1977
    :cond_d
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1981
    :goto_e
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1982
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x38e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1983
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1984
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1985
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1986
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1988
    const/16 v0, 0x5a

    .line 1989
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1990
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1991
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1992
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1993
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1994
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x8

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1996
    const/16 v0, 0x5b

    .line 1997
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1998
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1999
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2000
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2001
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2002
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    move v0, v1

    .line 2006
    :goto_f
    add-int/lit8 v0, v0, 0x1

    .line 2007
    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v1, v4, v0

    .line 2008
    aget-object v1, v4, v0

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_GRAPHIC_OVERLAY_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 2009
    aget-object v1, v4, v0

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v3, 0x0

    sub-long v6, p1, p3

    long-to-int v5, v6

    invoke-direct {v2, v3, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 2011
    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 2012
    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_GraphicID:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 2013
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 2014
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getWatermarkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 2016
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::getEffectDescriptions:: resourcePath: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    aget-object v2, v4, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->resourceList:[Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    .line 2020
    aget-object v1, v4, v0

    const/16 v2, 0xa

    new-array v2, v2, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2023
    const/4 v1, 0x0

    .line 2024
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2025
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CoordX:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2026
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2027
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2028
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2029
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosX:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2030
    const/4 v1, 0x1

    .line 2031
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2032
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CoordY:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2033
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2034
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2035
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2036
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosY:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2037
    const/4 v1, 0x2

    .line 2038
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2039
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_ObjectWidth:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2040
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2041
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2042
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2043
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkWidth:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2044
    const/4 v1, 0x3

    .line 2045
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2046
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_ObjectHeight:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2047
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2048
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2049
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2050
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkHeight:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2051
    const/4 v1, 0x4

    .line 2052
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2053
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_GraphicID:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2054
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2055
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2056
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2057
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2058
    const/4 v1, 0x5

    .line 2059
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableWatermark()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2060
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2061
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_Opacity:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2062
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2063
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2064
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2065
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2084
    :goto_10
    const/4 v1, 0x6

    .line 2085
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2086
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CanvasWidth:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2087
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2088
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2089
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2090
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0x780

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2091
    const/4 v1, 0x7

    .line 2092
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2093
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CanvasHeight:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2094
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2095
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2096
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2097
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0x438

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2098
    const/16 v1, 0x8

    .line 2099
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2100
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_TranslateZ:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2101
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2102
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2103
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2104
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0xa

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2106
    const/16 v1, 0x9

    .line 2107
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2108
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2109
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2110
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2111
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2112
    aget-object v0, v4, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2114
    return-object v4

    .line 977
    :cond_e
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_1

    .line 1069
    :cond_f
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_2

    .line 1164
    :cond_10
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_3

    .line 1262
    :cond_11
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_4

    .line 1332
    :cond_12
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_5

    .line 1339
    :cond_13
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_6

    .line 1437
    :cond_14
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_7

    .line 1541
    :cond_15
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_8

    .line 1548
    :cond_16
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_9

    .line 1650
    :cond_17
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_a

    .line 1759
    :cond_18
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_b

    .line 1872
    :cond_19
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_c

    .line 1972
    :cond_1a
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_d

    .line 1979
    :cond_1b
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_e

    .line 2067
    :cond_1c
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2068
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_Opacity:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2069
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2070
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2071
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2072
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2073
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2074
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2075
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getSegValueForFadeIn()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2076
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2077
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2078
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getSegValueForFadeOut()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2079
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2080
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2081
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2082
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_10

    :cond_1d
    move v0, v2

    goto/16 :goto_f

    :cond_1e
    move v3, v2

    move v2, v1

    goto/16 :goto_0
.end method

.method public static makeResource(Landroid/content/Context;)V
    .locals 15

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 79
    invoke-static {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInternalAppCacheFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    .line 80
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-wide v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->dataStartTime:D

    double-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v12, v0, v2

    .line 83
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: Location ++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/high16 v0, 0x42700000    # 60.0f

    sput v0, Lcom/muvee/mvdronecomposer/theme/blinds;->d:F

    .line 87
    const-string v0, ""

    .line 88
    sget v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

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
    const v0, -0xb2b29a

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    sget v0, Lcom/muvee/mvdronecomposer/theme/blinds;->d:F

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 105
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 107
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    const-string v2, "::makeResource:: geocoder.isPresent() false!!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    const/4 v2, 0x0

    .line 112
    const/4 v0, 0x0

    move v8, v0

    move-object v0, v2

    :goto_1
    const/16 v2, 0xa

    if-ge v8, v2, :cond_1

    .line 113
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

    .line 114
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 115
    sget-object v1, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

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

    .line 120
    :cond_1
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 121
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 122
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v7

    .line 123
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {v0}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    .line 128
    sget-object v5, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

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

    .line 132
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 133
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

    .line 146
    :cond_2
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2, v14}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 147
    :goto_3
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v1

    sget v2, Lcom/muvee/mvdronecomposer/theme/blinds;->c:I

    if-le v1, v2, :cond_6

    .line 148
    sget v1, Lcom/muvee/mvdronecomposer/theme/blinds;->d:F

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float/2addr v1, v2

    sput v1, Lcom/muvee/mvdronecomposer/theme/blinds;->d:F

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2, v14}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_3

    .line 112
    :cond_3
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_1

    .line 134
    :cond_4
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 137
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

    .line 140
    :cond_5
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: addresses is NULL!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v7

    goto :goto_2

    .line 142
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    .line 143
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 152
    :cond_6
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 153
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 154
    sget v3, Lcom/muvee/mvdronecomposer/theme/blinds;->b:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x40e00000    # 7.0f

    add-float/2addr v3, v4

    .line 155
    sget v4, Lcom/muvee/mvdronecomposer/theme/blinds;->c:I

    sub-int/2addr v4, v2

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 157
    sget v5, Lcom/muvee/mvdronecomposer/theme/blinds;->c:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/blinds;->b:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 158
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 160
    sget-object v7, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "::makeResource:: bgLocationHeight: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v14, Lcom/muvee/mvdronecomposer/theme/blinds;->b:I

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, ", bgLocationWidth: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v14, Lcom/muvee/mvdronecomposer/theme/blinds;->c:I

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, ", textFeatureNameHeight: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", textFeatureNameWidth: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offsetFeatureNameHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offsetFeatureNameWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget v1, Lcom/muvee/mvdronecomposer/theme/blinds;->b:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    invoke-virtual {v6, v0, v4, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 167
    :try_start_2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/styles/blinds/txt_location_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 170
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v5, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 172
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v4, "/styles/blinds/txt_location.png"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 174
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 175
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    if-eqz v5, :cond_7

    .line 180
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 185
    :cond_7
    :goto_4
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: Location --"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: Date ++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v0, "dd/MM/yyyy"

    invoke-static {v0, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    sget-object v1, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::makeResource:: dataStartTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 193
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    sget v2, Lcom/muvee/mvdronecomposer/theme/blinds;->g:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 195
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 196
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 198
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 200
    sget v3, Lcom/muvee/mvdronecomposer/theme/blinds;->f:I

    sget v4, Lcom/muvee/mvdronecomposer/theme/blinds;->e:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 201
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 203
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 204
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 205
    sget v6, Lcom/muvee/mvdronecomposer/theme/blinds;->e:I

    sub-int/2addr v6, v5

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x40e00000    # 7.0f

    add-float/2addr v6, v7

    .line 206
    sget v7, Lcom/muvee/mvdronecomposer/theme/blinds;->f:I

    sub-int/2addr v7, v2

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 208
    sget-object v8, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "::makeResource:: textDateHeight: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", textDateWidth: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", offsetDateHeight: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", offsetDateWidth: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget v2, Lcom/muvee/mvdronecomposer/theme/blinds;->e:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    invoke-virtual {v4, v0, v7, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 213
    :try_start_3
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/styles/blinds/txt_date_"

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

    .line 215
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 216
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 218
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v5, "/styles/blinds/txt_date.png"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 220
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 221
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 225
    if-eqz v3, :cond_8

    .line 226
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 230
    :cond_8
    :goto_5
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: Date --"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: max speed value ++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max. Speed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget v1, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->maxSpeed:F

    invoke-static {v1}, Lcom/muvee/mvdronecomposer/theme/blinds;->convertKphToMs(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 279
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    sget v2, Lcom/muvee/mvdronecomposer/theme/blinds;->m:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 281
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 282
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 284
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 286
    sget v3, Lcom/muvee/mvdronecomposer/theme/blinds;->l:I

    sget v4, Lcom/muvee/mvdronecomposer/theme/blinds;->k:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 287
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 289
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 290
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 291
    sget v6, Lcom/muvee/mvdronecomposer/theme/blinds;->k:I

    sub-int/2addr v6, v5

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x41200000    # 10.0f

    add-float/2addr v6, v7

    .line 292
    sget v7, Lcom/muvee/mvdronecomposer/theme/blinds;->l:I

    sub-int/2addr v7, v2

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 294
    sget-object v8, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "::makeResource:: bgFlightDataValueHeight: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v14, Lcom/muvee/mvdronecomposer/theme/blinds;->k:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", bgFlightDataValueWidth: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v14, Lcom/muvee/mvdronecomposer/theme/blinds;->l:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", textMaxSpeedValueHeight: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", textMaxSpeedValueWidth: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", offsetMaxSpeedValueHeight: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", offsetMaxSpeedValueWidth: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget v2, Lcom/muvee/mvdronecomposer/theme/blinds;->k:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    invoke-virtual {v4, v0, v7, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 300
    :try_start_4
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/styles/blinds/txt_max_speed_value_"

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

    .line 302
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 303
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 305
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v5, "/styles/blinds/txt_max_speed_value.png"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 307
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 308
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 312
    if-eqz v3, :cond_9

    .line 313
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 317
    :cond_9
    :goto_6
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: max speed value --"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: max altitude value ++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max. Altitude "

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

    .line 365
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 366
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 367
    sget v2, Lcom/muvee/mvdronecomposer/theme/blinds;->m:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 368
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 369
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 371
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 373
    sget v3, Lcom/muvee/mvdronecomposer/theme/blinds;->l:I

    sget v4, Lcom/muvee/mvdronecomposer/theme/blinds;->k:I

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
    sget v6, Lcom/muvee/mvdronecomposer/theme/blinds;->k:I

    sub-int/2addr v6, v5

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x40e00000    # 7.0f

    add-float/2addr v6, v7

    .line 379
    sget v7, Lcom/muvee/mvdronecomposer/theme/blinds;->l:I

    sub-int/2addr v7, v2

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 381
    sget-object v8, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "::makeResource:: bgFlightDataValueHeight: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v14, Lcom/muvee/mvdronecomposer/theme/blinds;->k:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", bgFlightDataValueWidth: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v14, Lcom/muvee/mvdronecomposer/theme/blinds;->l:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", textMaxAltitudeValueHeight: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", textMaxAltitudeValueWidth: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", offsetMaxAltitudeValueHeight: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", offsetMaxAltitudeValueWidth: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    sget v2, Lcom/muvee/mvdronecomposer/theme/blinds;->k:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    invoke-virtual {v4, v0, v7, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 387
    :try_start_5
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/styles/blinds/txt_max_altitude_value_"

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

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v5, "/styles/blinds/txt_max_altitude_value.png"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 394
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 395
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 399
    if-eqz v3, :cond_a

    .line 400
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 404
    :cond_a
    :goto_7
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: max altitude value --"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: time ++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v0, "hhA"

    invoke-static {v0, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    sget-object v1, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::makeResource:: dataStartTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 412
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 413
    sget v2, Lcom/muvee/mvdronecomposer/theme/blinds;->p:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 414
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 415
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 417
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 419
    sget v3, Lcom/muvee/mvdronecomposer/theme/blinds;->o:I

    sget v4, Lcom/muvee/mvdronecomposer/theme/blinds;->n:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 420
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 422
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 423
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 424
    sget v6, Lcom/muvee/mvdronecomposer/theme/blinds;->n:I

    sub-int/2addr v6, v5

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x40e00000    # 7.0f

    add-float/2addr v6, v7

    .line 425
    sget v7, Lcom/muvee/mvdronecomposer/theme/blinds;->o:I

    sub-int/2addr v7, v2

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 427
    sget-object v8, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "::makeResource:: textTimeHeight: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", textTimeWidth: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", offsetTimeHeight: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", offsetTimeWidth: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    sget v2, Lcom/muvee/mvdronecomposer/theme/blinds;->n:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    invoke-virtual {v4, v0, v7, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 432
    :try_start_6
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/styles/blinds/txt_time_"

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

    .line 434
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 435
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 437
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v5, "/styles/blinds/txt_time.png"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 438
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 439
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 440
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 444
    if-eqz v3, :cond_b

    .line 445
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 449
    :cond_b
    :goto_8
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: time --"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: Flight time ++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flight Time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-wide v2, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->dataDuration:D

    double-to-long v2, v2

    invoke-static {v2, v3}, Lcom/muvee/mvdronecomposer/theme/blinds;->convertSecondsToHMmSs(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 464
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 465
    sget v2, Lcom/muvee/mvdronecomposer/theme/blinds;->s:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 466
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 469
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 470
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 472
    sget v3, Lcom/muvee/mvdronecomposer/theme/blinds;->r:I

    sget v4, Lcom/muvee/mvdronecomposer/theme/blinds;->q:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 473
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 480
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 481
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 482
    sget v6, Lcom/muvee/mvdronecomposer/theme/blinds;->q:I

    sub-int/2addr v6, v5

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x41200000    # 10.0f

    add-float/2addr v6, v7

    .line 483
    sget v7, Lcom/muvee/mvdronecomposer/theme/blinds;->r:I

    sub-int/2addr v7, v2

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 485
    sget-object v8, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "::makeResource:: bgFlightTimeHeight: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v12, Lcom/muvee/mvdronecomposer/theme/blinds;->q:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", bgFlightTimeWidth: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v12, Lcom/muvee/mvdronecomposer/theme/blinds;->r:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", textFlightTimeValueHeight: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", textFlightTimeValueWidth: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", offsetFlightTimeValueHeight: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", offsetFlightTimeValueWidth: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    sget v2, Lcom/muvee/mvdronecomposer/theme/blinds;->q:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    invoke-virtual {v4, v0, v7, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 493
    :try_start_7
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/styles/blinds/txt_flight_time_"

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

    .line 495
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 496
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 498
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v5, "/styles/blinds/txt_flight_time.png"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 499
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 500
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 501
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 505
    if-eqz v3, :cond_c

    .line 506
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 510
    :cond_c
    :goto_9
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: Flight time --"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: map trace ++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    sget v0, Lcom/muvee/mvdronecomposer/theme/blinds;->u:I

    sget v1, Lcom/muvee/mvdronecomposer/theme/blinds;->t:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/muvee/mvdronecomposer/theme/diagonal;->getBitmapFromURL(IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 516
    if-eqz v1, :cond_15

    .line 518
    :try_start_8
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/styles/blinds/img_map_trace_"

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

    .line 520
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 521
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 523
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v5, "/styles/blinds/img_map_trace.png"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 524
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 525
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 526
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 530
    if-eqz v1, :cond_d

    .line 531
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 590
    :cond_d
    :goto_a
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: map trace --"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

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

    .line 592
    return-void

    .line 176
    :catch_1
    move-exception v0

    .line 177
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 179
    if-eqz v5, :cond_7

    .line 180
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_4

    .line 179
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_e

    .line 180
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 181
    :cond_e
    throw v0

    .line 222
    :catch_2
    move-exception v0

    .line 223
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 225
    if-eqz v3, :cond_8

    .line 226
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_5

    .line 225
    :catchall_1
    move-exception v0

    if-eqz v3, :cond_f

    .line 226
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 227
    :cond_f
    throw v0

    .line 309
    :catch_3
    move-exception v0

    .line 310
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 312
    if-eqz v3, :cond_9

    .line 313
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_6

    .line 312
    :catchall_2
    move-exception v0

    if-eqz v3, :cond_10

    .line 313
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 314
    :cond_10
    throw v0

    .line 396
    :catch_4
    move-exception v0

    .line 397
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 399
    if-eqz v3, :cond_a

    .line 400
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_7

    .line 399
    :catchall_3
    move-exception v0

    if-eqz v3, :cond_11

    .line 400
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 401
    :cond_11
    throw v0

    .line 441
    :catch_5
    move-exception v0

    .line 442
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 444
    if-eqz v3, :cond_b

    .line 445
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_8

    .line 444
    :catchall_4
    move-exception v0

    if-eqz v3, :cond_12

    .line 445
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 446
    :cond_12
    throw v0

    .line 502
    :catch_6
    move-exception v0

    .line 503
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 505
    if-eqz v3, :cond_c

    .line 506
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_9

    .line 505
    :catchall_5
    move-exception v0

    if-eqz v3, :cond_13

    .line 506
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 507
    :cond_13
    throw v0

    .line 527
    :catch_7
    move-exception v0

    .line 528
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 530
    if-eqz v1, :cond_d

    .line 531
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_a

    .line 530
    :catchall_6
    move-exception v0

    if-eqz v1, :cond_14

    .line 531
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 532
    :cond_14
    throw v0

    .line 536
    :cond_15
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v2, "/styles/diagonal/pin_a.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 537
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v3, "/styles/diagonal/pin_b.png"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 540
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 542
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 543
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 544
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 545
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 547
    sget v0, Lcom/muvee/mvdronecomposer/theme/blinds;->u:I

    sget v1, Lcom/muvee/mvdronecomposer/theme/blinds;->t:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 548
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 550
    sget v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    .line 551
    sget-object v1, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::makeResource:: bgMapTraceWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/muvee/mvdronecomposer/theme/blinds;->u:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bgMapTraceHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/muvee/mvdronecomposer/theme/blinds;->t:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    sget v1, Lcom/muvee/mvdronecomposer/theme/blinds;->u:I

    sget v2, Lcom/muvee/mvdronecomposer/theme/blinds;->t:I

    invoke-static {v1, v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->setDrawblePointXY(II)V

    .line 553
    const/4 v1, 0x0

    move v6, v1

    :goto_b
    sget v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    if-ge v6, v1, :cond_16

    .line 554
    sget-object v1, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

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

    .line 556
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

    .line 553
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_b

    .line 558
    :cond_16
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

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 559
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

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 564
    :goto_c
    :try_start_10
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/styles/blinds/img_map_trace_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 566
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 567
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v9, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 569
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/blinds;->x:Ljava/io/File;

    const-string v4, "/styles/blinds/img_map_trace.png"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 570
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 571
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 572
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 576
    if-eqz v9, :cond_17

    .line 577
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 580
    :cond_17
    if-eqz v7, :cond_18

    .line 581
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 584
    :cond_18
    if-eqz v8, :cond_d

    .line 585
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_a

    .line 561
    :cond_19
    sget-object v0, Lcom/muvee/mvdronecomposer/theme/blinds;->a:Ljava/lang/String;

    const-string v1, "::makeResource:: location data wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 573
    :catch_8
    move-exception v0

    .line 574
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 576
    if-eqz v9, :cond_1a

    .line 577
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 580
    :cond_1a
    if-eqz v7, :cond_1b

    .line 581
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 584
    :cond_1b
    if-eqz v8, :cond_d

    .line 585
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_a

    .line 576
    :catchall_7
    move-exception v0

    if-eqz v9, :cond_1c

    .line 577
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 580
    :cond_1c
    if-eqz v7, :cond_1d

    .line 581
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 584
    :cond_1d
    if-eqz v8, :cond_1e

    .line 585
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 586
    :cond_1e
    throw v0

    :cond_1f
    move-object v7, v0

    goto/16 :goto_0
.end method
