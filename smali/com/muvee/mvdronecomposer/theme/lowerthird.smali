.class public Lcom/muvee/mvdronecomposer/theme/lowerthird;
.super Ljava/lang/Object;
.source "lowerthird.java"


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
    const/high16 v3, 0x42200000    # 40.0f

    const/16 v2, 0x44

    const/16 v1, 0x1e0

    .line 49
    const-class v0, Lcom/muvee/mvdronecomposer/theme/lowerthird;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    .line 51
    const/16 v0, 0x5a

    sput v0, Lcom/muvee/mvdronecomposer/theme/lowerthird;->b:I

    .line 52
    sput v1, Lcom/muvee/mvdronecomposer/theme/lowerthird;->c:I

    .line 53
    const/high16 v0, 0x42700000    # 60.0f

    sput v0, Lcom/muvee/mvdronecomposer/theme/lowerthird;->d:F

    .line 54
    sput v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->e:I

    .line 55
    sput v1, Lcom/muvee/mvdronecomposer/theme/lowerthird;->f:I

    .line 56
    sput v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->g:F

    .line 57
    sput v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->h:I

    .line 58
    sput v1, Lcom/muvee/mvdronecomposer/theme/lowerthird;->i:I

    .line 59
    sput v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->j:F

    .line 60
    sput v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->k:I

    .line 61
    sput v1, Lcom/muvee/mvdronecomposer/theme/lowerthird;->l:I

    .line 62
    const/high16 v0, 0x428c0000    # 70.0f

    sput v0, Lcom/muvee/mvdronecomposer/theme/lowerthird;->m:F

    .line 63
    sput v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->n:I

    .line 64
    sput v1, Lcom/muvee/mvdronecomposer/theme/lowerthird;->o:I

    .line 65
    sput v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->p:F

    .line 66
    sput v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->q:I

    .line 67
    sput v1, Lcom/muvee/mvdronecomposer/theme/lowerthird;->r:I

    .line 68
    sput v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->s:F

    .line 69
    const/16 v0, 0xfa

    sput v0, Lcom/muvee/mvdronecomposer/theme/lowerthird;->t:I

    .line 70
    const/16 v0, 0x1cc

    sput v0, Lcom/muvee/mvdronecomposer/theme/lowerthird;->u:I

    .line 72
    const/16 v0, 0x60

    sput v0, Lcom/muvee/mvdronecomposer/theme/lowerthird;->v:I

    .line 73
    const/16 v0, 0x37

    sput v0, Lcom/muvee/mvdronecomposer/theme/lowerthird;->w:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertKphToMs(F)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2156
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    const/high16 v1, 0x45610000    # 3600.0f

    div-float/2addr v0, v1

    .line 2157
    sget-object v1, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

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

    .line 2158
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

    .line 2149
    rem-long v0, p0, v2

    .line 2150
    div-long v0, p0, v2

    rem-long/2addr v0, v2

    .line 2151
    const-wide/16 v2, 0xe10

    div-long v2, p0, v2

    const-wide/16 v4, 0x18

    rem-long/2addr v2, v4

    .line 2152
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
    .line 607
    const/4 v1, 0x1

    .line 609
    const/4 v0, 0x0

    .line 610
    sget-boolean v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_IN_EFFECT_WHEN_START:Z

    if-eqz v2, :cond_0

    .line 611
    const/4 v1, 0x2

    .line 612
    sget v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->VIDEO_FADE_IN_DURATION:I

    .line 615
    :cond_0
    const/4 v2, 0x0

    .line 616
    sget-boolean v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_OUT_EFFECT_WHEN_CLOSE:Z

    if-eqz v3, :cond_1d

    .line 617
    add-int/lit8 v2, v1, 0x1

    .line 618
    sget v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->VIDEO_FADE_OUT_DURATION:I

    move v3, v1

    .line 621
    :goto_0
    const/4 v1, 0x0

    .line 622
    sub-long v4, p1, p3

    int-to-long v6, v0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1b58

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 623
    const/4 v1, 0x1

    .line 624
    add-int/lit8 v2, v2, 0x1

    .line 627
    :cond_1
    sget-object v4, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

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

    .line 629
    new-array v4, v2, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    .line 631
    const/4 v2, -0x1

    .line 634
    sget-boolean v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_IN_EFFECT_WHEN_START:Z

    if-eqz v5, :cond_2

    .line 636
    const/4 v2, 0x0

    .line 639
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v5, v4, v2

    .line 640
    aget-object v5, v4, v2

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 641
    aget-object v5, v4, v2

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 643
    const/16 v5, 0xc

    .line 644
    aget-object v6, v4, v2

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v5, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 646
    const/4 v5, 0x0

    .line 647
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 648
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 649
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 650
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 651
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 652
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, -0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 653
    const/4 v5, 0x1

    .line 654
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 655
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_RGBColorR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 656
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 657
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 658
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 659
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 660
    const/4 v5, 0x2

    .line 661
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 662
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorIntensityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 663
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 664
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 665
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 666
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x64

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 667
    const/4 v5, 0x3

    .line 668
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 669
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorLayer:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 670
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 671
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 672
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 673
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x2

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 674
    const/4 v5, 0x4

    .line 675
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 676
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 677
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 678
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 679
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 680
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 681
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x1f4

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 682
    const/4 v5, 0x5

    .line 683
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 684
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 685
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 686
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 687
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 688
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 689
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x1f4

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 690
    const/4 v5, 0x6

    .line 691
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 692
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 693
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 694
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 695
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 696
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 697
    const/4 v5, 0x7

    .line 698
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 699
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 700
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 701
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 702
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 703
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 704
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x3e8

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 705
    const/16 v5, 0x8

    .line 706
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 707
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 708
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 709
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 710
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 711
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 712
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x3e8

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 713
    const/16 v5, 0x9

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

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 716
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x2

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 717
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x2

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

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 720
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x64

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 721
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 722
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x3e8

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 723
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 724
    const/16 v5, 0xa

    .line 725
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 726
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 727
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 728
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 729
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 730
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x8

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 731
    const/16 v5, 0xb

    .line 732
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v5

    .line 733
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 734
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 735
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 736
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 737
    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 740
    :cond_2
    sget-boolean v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_OUT_EFFECT_WHEN_CLOSE:Z

    if-eqz v5, :cond_3

    .line 742
    add-int/lit8 v2, v2, 0x1

    .line 745
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v5, v4, v2

    .line 746
    aget-object v5, v4, v2

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 747
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

    .line 749
    const/16 v3, 0xc

    .line 750
    aget-object v5, v4, v2

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v3, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 752
    const/4 v3, 0x0

    .line 753
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 754
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 755
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 756
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 757
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 758
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/4 v5, -0x1

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 759
    const/4 v3, 0x1

    .line 760
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 761
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_RGBColorR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 762
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 763
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 764
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 765
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/4 v5, 0x0

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 766
    const/4 v3, 0x2

    .line 767
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 768
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorIntensityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 769
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 770
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 771
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 772
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/16 v5, 0x64

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 773
    const/4 v3, 0x3

    .line 774
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 775
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorLayer:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 776
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 777
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 778
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 779
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/4 v5, 0x2

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 780
    const/4 v3, 0x4

    .line 781
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 782
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 783
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 784
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 785
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 786
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 787
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/16 v5, 0x1f4

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 788
    const/4 v3, 0x5

    .line 789
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 790
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 791
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 792
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 793
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 794
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 795
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/16 v5, 0x1f4

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 796
    const/4 v3, 0x6

    .line 797
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 798
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 799
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 800
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 801
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 802
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/4 v5, 0x1

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 803
    const/4 v3, 0x7

    .line 804
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 805
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 806
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 807
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 808
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 809
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 810
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/16 v5, 0x3e8

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 811
    const/16 v3, 0x8

    .line 812
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 813
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 814
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 815
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 816
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 817
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 818
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/16 v5, 0x3e8

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 819
    const/16 v3, 0x9

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

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 822
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x2

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 823
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x2

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

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 826
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 827
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 828
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/16 v6, 0x3e8

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 829
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    const/16 v5, 0x64

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 830
    const/16 v3, 0xa

    .line 831
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 832
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 833
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 834
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 835
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 836
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/16 v5, 0x8

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 837
    const/16 v3, 0xb

    .line 838
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v6, v5, v3

    .line 839
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 840
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 841
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 842
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    .line 843
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v5, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/4 v5, 0x0

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 846
    :cond_3
    if-eqz v1, :cond_1c

    .line 848
    add-int/lit8 v1, v2, 0x1

    .line 851
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

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

    .line 853
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v2, v4, v1

    .line 854
    aget-object v2, v4, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 855
    aget-object v2, v4, v1

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    add-int/lit16 v5, v0, 0xc8

    add-int/lit16 v0, v0, 0x1838

    invoke-direct {v3, v5, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 857
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 858
    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v2

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 859
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 860
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v5, "/styles/lowerthird/bg_data_black.png"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 862
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 863
    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 864
    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 865
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v6, "/styles/lowerthird/bg_data_yellow.png"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 867
    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 868
    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 869
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 870
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v7, "/styles/lowerthird/txt_max_speed_label.png"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 872
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 873
    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 874
    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 875
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v8, "/styles/lowerthird/txt_max_speed_value.png"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 877
    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 878
    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 879
    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 880
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v9, "/styles/lowerthird/txt_max_altitude_label.png"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 882
    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 883
    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 884
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 885
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v10, "/styles/lowerthird/txt_max_altitude_value.png"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 887
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 888
    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 889
    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 890
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v11, "/styles/lowerthird/txt_flight_time.png"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 892
    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 893
    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 894
    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 895
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v12, "/styles/lowerthird/txt_time.png"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 897
    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 898
    sget-object v11, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v11

    iput v11, v10, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 899
    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v11, v10, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 900
    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v13, "/styles/lowerthird/bg_location.png"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 902
    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 903
    sget-object v12, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v12}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v12

    iput v12, v11, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 904
    new-instance v12, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v12, v11, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 905
    new-instance v12, Ljava/io/File;

    sget-object v13, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v14, "/styles/lowerthird/txt_date.png"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 907
    new-instance v12, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v12}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 908
    sget-object v13, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v13}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v13

    iput v13, v12, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 909
    new-instance v13, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v13, v12, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 910
    new-instance v13, Ljava/io/File;

    sget-object v14, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v15, "/styles/lowerthird/img_map_trace.png"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 912
    new-instance v13, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v13}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 913
    sget-object v14, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v14}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v14

    iput v14, v13, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 914
    new-instance v14, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v14, v13, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 915
    new-instance v14, Ljava/io/File;

    sget-object v15, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v16, "/styles/lowerthird/txt_location.png"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 917
    aget-object v14, v4, v1

    const/16 v15, 0xc

    new-array v15, v15, [Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    const/16 v16, 0x0

    aput-object v0, v15, v16

    const/4 v0, 0x1

    aput-object v2, v15, v0

    const/4 v0, 0x2

    aput-object v3, v15, v0

    const/4 v0, 0x3

    aput-object v5, v15, v0

    const/4 v0, 0x4

    aput-object v6, v15, v0

    const/4 v0, 0x5

    aput-object v7, v15, v0

    const/4 v0, 0x6

    aput-object v8, v15, v0

    const/4 v0, 0x7

    aput-object v9, v15, v0

    const/16 v0, 0x8

    aput-object v10, v15, v0

    const/16 v0, 0x9

    aput-object v11, v15, v0

    const/16 v0, 0xa

    aput-object v12, v15, v0

    const/16 v0, 0xb

    aput-object v13, v15, v0

    iput-object v15, v14, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->resourceList:[Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    .line 921
    const/16 v0, 0x5e

    .line 922
    aget-object v2, v4, v1

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v0, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 925
    const/4 v0, 0x0

    .line 926
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 927
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 928
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 929
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

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

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 932
    const/4 v0, 0x1

    .line 933
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 934
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 935
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 936
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 937
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 938
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 939
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 940
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x4e2

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 941
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 942
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xb4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 943
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x4e2

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 944
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 945
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xf0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 946
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x2ee

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 947
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 948
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x38e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 949
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x2ee

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 950
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 951
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x3ca

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 952
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x4e2

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 953
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 954
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 955
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x4e2

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 956
    const/4 v0, 0x2

    .line 957
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 958
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 959
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 960
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 961
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 962
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 963
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xe6

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 964
    const/4 v0, 0x3

    .line 965
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 966
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 967
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 968
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 969
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 970
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 971
    const/4 v0, 0x4

    .line 972
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 973
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 974
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 975
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 976
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 977
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 978
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x1f4

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 979
    const/4 v0, 0x5

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

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 982
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 983
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 984
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 985
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 986
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x78

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 987
    const/4 v0, 0x6

    .line 988
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 989
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 990
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 991
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 992
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 993
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 994
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1000
    :goto_1
    const/4 v0, 0x7

    .line 1001
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1002
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1003
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1004
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1005
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1006
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1007
    const/16 v0, 0x8

    .line 1008
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1009
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1010
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1011
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1012
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1013
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1014
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1015
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x46a

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1016
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1017
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x118

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1018
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x46a

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1019
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1020
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x154

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1021
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x366

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1022
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1023
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3ac

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1024
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x366

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1025
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1026
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x3ca

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1027
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x46a

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1028
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1029
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1030
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x46a

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1031
    const/16 v0, 0x9

    .line 1032
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1033
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1034
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1035
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1036
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1037
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1038
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xe6

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1039
    const/16 v0, 0xa

    .line 1040
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1041
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1042
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1043
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1044
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1045
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1046
    const/16 v0, 0xb

    .line 1047
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1048
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1049
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1050
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1051
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1052
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1053
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xfa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1054
    const/16 v0, 0xc

    .line 1055
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1056
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1057
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1058
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1059
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1060
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1061
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x78

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1062
    const/16 v0, 0xd

    .line 1063
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1064
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1065
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1066
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1067
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1069
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1075
    :goto_2
    const/16 v0, 0xe

    .line 1076
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1077
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1078
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1079
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1080
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1081
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1082
    const/16 v0, 0xf

    .line 1083
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1084
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1085
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1086
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1087
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1088
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1089
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1090
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x172

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1091
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1092
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xdc

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1093
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x172

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1094
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1095
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x140

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1096
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x280

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1097
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1098
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x21c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1099
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x280

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1100
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1101
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x258

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1102
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x172

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1103
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1104
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1105
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x172

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1106
    const/16 v0, 0x10

    .line 1107
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1108
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1109
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1110
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1111
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1112
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1113
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x104

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1114
    const/16 v0, 0x11

    .line 1115
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1116
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1117
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1118
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1119
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1120
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1121
    const/16 v0, 0x12

    .line 1122
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1123
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1124
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1125
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1126
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1127
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1128
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xfa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1129
    const/16 v0, 0x13

    .line 1130
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1131
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1132
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1133
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1134
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1135
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1136
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x3c

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1137
    const/16 v0, 0x14

    .line 1138
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1139
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1140
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1141
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1142
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1143
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1144
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1148
    :goto_3
    const/16 v0, 0x15

    .line 1149
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1150
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX03:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1151
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1152
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

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

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1155
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1156
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1157
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xdc

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1158
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1159
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1160
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x140

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1161
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1162
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1163
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x21c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1164
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1165
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1166
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x258

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1167
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1168
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1169
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1170
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1173
    const/16 v0, 0x16

    .line 1174
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1175
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1176
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1177
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1178
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1179
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1180
    const/16 v0, 0x17

    .line 1181
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1182
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1183
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1184
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1185
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1186
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1187
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1188
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x172

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1189
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1190
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x118

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1191
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x172

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1192
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1193
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x17c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1194
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x280

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1195
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1196
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x24e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1197
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x280

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1198
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1199
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x280

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1200
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x172

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1201
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1202
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1203
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x172

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1204
    const/16 v0, 0x18

    .line 1205
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1206
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1207
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1208
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1209
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1210
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1211
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xd2

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1212
    const/16 v0, 0x19

    .line 1213
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1214
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1215
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1216
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1217
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1218
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1219
    const/16 v0, 0x1a

    .line 1220
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1221
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1222
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1223
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1224
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1225
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1226
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xfa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1227
    const/16 v0, 0x1b

    .line 1228
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1229
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1230
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1231
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1232
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1233
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1234
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x3c

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1235
    const/16 v0, 0x1c

    .line 1236
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1237
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1238
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1239
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1240
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1241
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1242
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1246
    :goto_4
    const/16 v0, 0x1d

    .line 1247
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1248
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX04:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1249
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1250
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1251
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1252
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1253
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1254
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1255
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x118

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1256
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1257
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1258
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x17c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1259
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1260
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1261
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x24e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1262
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1263
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1264
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x280

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1265
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1266
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1267
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1268
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1271
    const/16 v0, 0x1e

    .line 1272
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1273
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1274
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1275
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1276
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1277
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1278
    const/16 v0, 0x1f

    .line 1279
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1280
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1281
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1282
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1283
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1284
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1285
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1286
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x172

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1287
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1288
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x24e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1289
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x172

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1290
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1291
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x2b2

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1292
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x280

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1293
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1294
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1295
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x280

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1296
    const/16 v0, 0x20

    .line 1297
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1298
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1299
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1300
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1301
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1302
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1303
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x104

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1304
    const/16 v0, 0x21

    .line 1305
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1306
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1307
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1308
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1309
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1310
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1311
    const/16 v0, 0x22

    .line 1312
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1313
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1314
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1315
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1316
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1317
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1318
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xfa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1319
    const/16 v0, 0x23

    .line 1320
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1321
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1322
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1323
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1324
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1325
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1326
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x3c

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1327
    const/16 v0, 0x24

    .line 1328
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1329
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1330
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1331
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1332
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1333
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1334
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1335
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1339
    :goto_5
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1340
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x366

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1341
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1342
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1346
    :goto_6
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1347
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x384

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1348
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1349
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1350
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1351
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1352
    const/16 v0, 0x25

    .line 1353
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1354
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX05:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1355
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1356
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1357
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1358
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1359
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1360
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1361
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x24e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1362
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1363
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1364
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x2b2

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1365
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1366
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1367
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1368
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1371
    const/16 v0, 0x26

    .line 1372
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1373
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1374
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1375
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1376
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1377
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1378
    const/16 v0, 0x27

    .line 1379
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1380
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1381
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1382
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1383
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1384
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1385
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1386
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x172

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1387
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1388
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x2b2

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1389
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x172

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1390
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1391
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x2f8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1392
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x280

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1393
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1394
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1395
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x280

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1396
    const/16 v0, 0x28

    .line 1397
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1398
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1399
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1400
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1401
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1402
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1403
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xd2

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1404
    const/16 v0, 0x29

    .line 1405
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1406
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1407
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1408
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1409
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1410
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1411
    const/16 v0, 0x2a

    .line 1412
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1413
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1414
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1415
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1416
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1417
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1418
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xfa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1419
    const/16 v0, 0x2b

    .line 1420
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1421
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1422
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1423
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1424
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1425
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1426
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x3c

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1427
    const/16 v0, 0x2c

    .line 1428
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1429
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1430
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1431
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1432
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1433
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1434
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1435
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1439
    :goto_7
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1440
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x366

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1441
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1442
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1446
    :goto_8
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1447
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x384

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1448
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1449
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1450
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1451
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1452
    const/16 v0, 0x2d

    .line 1453
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1454
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX06:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1455
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1456
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1457
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1458
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1459
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1460
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1461
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x2b2

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1462
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1463
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1464
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x2f8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1465
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1466
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1467
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1468
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1471
    const/16 v0, 0x2e

    .line 1472
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1473
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1474
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1475
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1476
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1477
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1478
    const/16 v0, 0x2f

    .line 1479
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1480
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1481
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1482
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1483
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1484
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1485
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1486
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x258

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1487
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1488
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x172

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1489
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x258

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1490
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1491
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x1ae

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1492
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x370

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1493
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1494
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1495
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x370

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1496
    const/16 v0, 0x30

    .line 1497
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1498
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1499
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1500
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1501
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1502
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1503
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xd2

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1504
    const/16 v0, 0x31

    .line 1505
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1506
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1507
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1508
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1509
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1510
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1511
    const/16 v0, 0x32

    .line 1512
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1513
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1514
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1515
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1516
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1517
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1518
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xfa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1519
    const/16 v0, 0x33

    .line 1520
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1521
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1522
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1523
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1524
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1525
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1526
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x3c

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1527
    const/16 v0, 0x34

    .line 1528
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1529
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1530
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1531
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1532
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1533
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1534
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1535
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1539
    :goto_9
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1540
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x366

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1541
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1542
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1546
    :goto_a
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1547
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x384

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1548
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1549
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1550
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1551
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1552
    const/16 v0, 0x35

    .line 1553
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1554
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX07:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1555
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1556
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1557
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1558
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1559
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1560
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1561
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x172

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1562
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1563
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1564
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x1ae

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1565
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1566
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1567
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1568
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1571
    const/16 v0, 0x36

    .line 1572
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1573
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1574
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1575
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1576
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1577
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1578
    const/16 v0, 0x37

    .line 1579
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1580
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1581
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1582
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1583
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1584
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1585
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1586
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x258

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1587
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1588
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x1ae

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1589
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x258

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1590
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1591
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x1e0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1592
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x370

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1593
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1594
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1595
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x370

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1596
    const/16 v0, 0x38

    .line 1597
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1598
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1599
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1600
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1601
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1602
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1603
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x104

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1604
    const/16 v0, 0x39

    .line 1605
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1606
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1607
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1608
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1609
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1610
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1611
    const/16 v0, 0x3a

    .line 1612
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1613
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1614
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1615
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1616
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1617
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1618
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xfa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1619
    const/16 v0, 0x3b

    .line 1620
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1621
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1622
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1623
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1624
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1625
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1626
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x3c

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1627
    const/16 v0, 0x3c

    .line 1628
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1629
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1630
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1631
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1632
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1633
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1634
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1635
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1639
    :goto_b
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1640
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x366

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1641
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1642
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1646
    :goto_c
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1647
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x384

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1648
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1649
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1650
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1651
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1652
    const/16 v0, 0x3d

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

    const/16 v3, 0x1ae

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

    const/16 v3, 0x1e0

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
    const/16 v0, 0x3e

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

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1672
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1673
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

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

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x8

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1677
    const/16 v0, 0x3f

    .line 1678
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1679
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1680
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1681
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1682
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1683
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1686
    const/16 v0, 0x40

    .line 1687
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1688
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1689
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1690
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1691
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1692
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1693
    const/16 v0, 0x41

    .line 1694
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1695
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1696
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1697
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1698
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1699
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1700
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1701
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, -0xfa

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1702
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1703
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x10e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1704
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, -0xfa

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1705
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1706
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x14a

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1707
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xfa

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1708
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1709
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x384

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1710
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0xfa

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1711
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1712
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x3c0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1713
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, -0xfa

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1714
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1715
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1716
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, -0xfa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1717
    const/16 v0, 0x42

    .line 1718
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1719
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1720
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1721
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1722
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1723
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1724
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xaa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1725
    const/16 v0, 0x43

    .line 1726
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1727
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1728
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1729
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1730
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1731
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1732
    const/16 v0, 0x44

    .line 1733
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1734
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1735
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1736
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1737
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1738
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1739
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x1f4

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1740
    const/16 v0, 0x45

    .line 1741
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1742
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1743
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1744
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1745
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1746
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1747
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xf0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1748
    const/16 v0, 0x46

    .line 1749
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1750
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1751
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1752
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1753
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1754
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    .line 1755
    :cond_5
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1761
    :goto_d
    const/16 v0, 0x47

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

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1764
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1765
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

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

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1768
    const/16 v0, 0x48

    .line 1769
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1770
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1771
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1772
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1773
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1774
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1775
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1776
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x276

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1777
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1778
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x118

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1779
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x276

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1780
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1781
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x17c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1782
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x168

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1783
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1784
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x35c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1785
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x168

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1786
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1787
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x384

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1788
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x276

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1789
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1790
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1791
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x276

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1792
    const/16 v0, 0x49

    .line 1793
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1794
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1795
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1796
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1797
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1798
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1799
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xc8

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1800
    const/16 v0, 0x4a

    .line 1801
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1802
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1803
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1804
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1805
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1806
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1807
    const/16 v0, 0x4b

    .line 1808
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1809
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1810
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1811
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1812
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1813
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1814
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xfa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1815
    const/16 v0, 0x4c

    .line 1816
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1817
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1818
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1819
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1820
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1821
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1822
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x3c

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1823
    const/16 v0, 0x4d

    .line 1824
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1825
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1826
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1827
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

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
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v2

    if-nez v2, :cond_6

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    .line 1830
    :cond_6
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1834
    :goto_e
    const/16 v0, 0x4e

    .line 1835
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1836
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX310:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1837
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1838
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1839
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1840
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1841
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1842
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1843
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x118

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1844
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1845
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1846
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x17c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1847
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1848
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1849
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x35c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1850
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1851
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1852
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x384

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1853
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1854
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1855
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1856
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1859
    const/16 v0, 0x4f

    .line 1860
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1861
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1862
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1863
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1864
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1865
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1866
    const/16 v0, 0x50

    .line 1867
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1868
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1869
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1870
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1871
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1872
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1873
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x87

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1874
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

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1877
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1878
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1879
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1880
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1881
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xaa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1882
    const/16 v0, 0x52

    .line 1883
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1884
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1885
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1886
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1887
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1888
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1889
    const/16 v0, 0x53

    .line 1890
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1891
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1892
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1893
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1894
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1895
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1896
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xe4

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1897
    const/16 v0, 0x54

    .line 1898
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1899
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1900
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1901
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1902
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1903
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1904
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xe4

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1905
    const/16 v0, 0x55

    .line 1906
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1907
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1908
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1909
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1910
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1911
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1912
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1913
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1914
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x136

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1915
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1916
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1917
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x140

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1918
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v2

    if-nez v2, :cond_7

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_18

    .line 1919
    :cond_7
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1923
    :goto_f
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1924
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x384

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1925
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v2

    if-nez v2, :cond_8

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    .line 1926
    :cond_8
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1930
    :goto_10
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1931
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x38e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1932
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1933
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1934
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1935
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1938
    const/16 v0, 0x56

    .line 1939
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1940
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1941
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1942
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1943
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1944
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1945
    const/16 v0, 0x57

    .line 1946
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1947
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1948
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1949
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1950
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1951
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1952
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1953
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x276

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1954
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1955
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xe6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1956
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x276

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1957
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1958
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x14a

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1959
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x168

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1960
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1961
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x35c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1962
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x168

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1963
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1964
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x384

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1965
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x276

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1966
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1967
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1968
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x276

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1969
    const/16 v0, 0x58

    .line 1970
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1971
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1972
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1973
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1974
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1975
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1976
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x104

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1977
    const/16 v0, 0x59

    .line 1978
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1979
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1980
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1981
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1982
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1983
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1984
    const/16 v0, 0x5a

    .line 1985
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1986
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1987
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1988
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1989
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1990
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1991
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xfa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1992
    const/16 v0, 0x5b

    .line 1993
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1994
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1995
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1996
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1997
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1998
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 1999
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x53

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2000
    const/16 v0, 0x5c

    .line 2001
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 2002
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2003
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2004
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2005
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2006
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v2

    if-nez v2, :cond_9

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    .line 2007
    :cond_9
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2011
    :goto_11
    const/16 v0, 0x5d

    .line 2012
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 2013
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX312:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2014
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2015
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2016
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2017
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2018
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2019
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2020
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xe6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2021
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2022
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2023
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x14a

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2024
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2025
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2026
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x35c

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2027
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2028
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2029
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x384

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2030
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2031
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2032
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2033
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    move v0, v1

    .line 2037
    :goto_12
    add-int/lit8 v0, v0, 0x1

    .line 2038
    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v1, v4, v0

    .line 2039
    aget-object v1, v4, v0

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_GRAPHIC_OVERLAY_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 2040
    aget-object v1, v4, v0

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v3, 0x0

    sub-long v6, p1, p3

    long-to-int v5, v6

    invoke-direct {v2, v3, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 2042
    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 2043
    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_GraphicID:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 2044
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 2045
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getWatermarkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 2047
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

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

    .line 2049
    aget-object v2, v4, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->resourceList:[Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    .line 2051
    aget-object v1, v4, v0

    const/16 v2, 0xa

    new-array v2, v2, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2054
    const/4 v1, 0x0

    .line 2055
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2056
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CoordX:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2057
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2058
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2059
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2060
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosX:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2061
    const/4 v1, 0x1

    .line 2062
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2063
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CoordY:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2064
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2065
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2066
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2067
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosY:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2068
    const/4 v1, 0x2

    .line 2069
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2070
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_ObjectWidth:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2071
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2072
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2073
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2074
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkWidth:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2075
    const/4 v1, 0x3

    .line 2076
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2077
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_ObjectHeight:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2078
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2079
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2080
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2081
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkHeight:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2082
    const/4 v1, 0x4

    .line 2083
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2084
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_GraphicID:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2085
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2086
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2087
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2088
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2089
    const/4 v1, 0x5

    .line 2090
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableWatermark()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2091
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2092
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_Opacity:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2093
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2094
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2095
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2096
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2115
    :goto_13
    const/4 v1, 0x6

    .line 2116
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2117
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CanvasWidth:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2118
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2119
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2120
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2121
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0x780

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2122
    const/4 v1, 0x7

    .line 2123
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2124
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CanvasHeight:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2125
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2126
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2127
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2128
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0x438

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2129
    const/16 v1, 0x8

    .line 2130
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2131
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_TranslateZ:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2132
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2133
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2134
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2135
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0xa

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2137
    const/16 v1, 0x9

    .line 2138
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2139
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2140
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2141
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2142
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2143
    aget-object v0, v4, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2145
    return-object v4

    .line 996
    :cond_a
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_1

    .line 1071
    :cond_b
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_2

    .line 1146
    :cond_c
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_3

    .line 1244
    :cond_d
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_4

    .line 1337
    :cond_e
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_5

    .line 1344
    :cond_f
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
    :cond_10
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_7

    .line 1444
    :cond_11
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_8

    .line 1537
    :cond_12
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_9

    .line 1544
    :cond_13
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_a

    .line 1637
    :cond_14
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_b

    .line 1644
    :cond_15
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_c

    .line 1757
    :cond_16
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_d

    .line 1832
    :cond_17
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_e

    .line 1921
    :cond_18
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_f

    .line 1928
    :cond_19
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_10

    .line 2009
    :cond_1a
    aget-object v2, v4, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_11

    .line 2098
    :cond_1b
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2099
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_Opacity:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2100
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2101
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2102
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2103
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2104
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2105
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2106
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getSegValueForFadeIn()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2107
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2108
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2109
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getSegValueForFadeOut()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2110
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2111
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v2, v3

    .line 2112
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2113
    aget-object v2, v4, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_13

    :cond_1c
    move v0, v2

    goto/16 :goto_12

    :cond_1d
    move v3, v2

    move v2, v1

    goto/16 :goto_0
.end method

.method public static makeResource(Landroid/content/Context;)V
    .locals 20

    .prologue
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 80
    invoke-static/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInternalAppCacheFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    sput-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    .line 81
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-wide v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->dataStartTime:D

    double-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v14, v2, v4

    .line 84
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Location ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/high16 v2, 0x42700000    # 60.0f

    sput v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->d:F

    .line 88
    const-string v2, ""

    .line 89
    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_23

    .line 90
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

    .line 92
    :goto_0
    const-string v2, ""

    .line 93
    const-string v2, ""

    .line 94
    const-string v2, ""

    .line 95
    const-string v2, ""

    .line 96
    const-string v2, ""

    .line 98
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 99
    const/4 v2, -0x1

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    sget v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->d:F

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 101
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 103
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 106
    :try_start_0
    new-instance v3, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 108
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v4, "::makeResource:: geocoder.isPresent() false!!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    const/4 v4, 0x0

    .line 113
    const/4 v2, 0x0

    move v10, v2

    move-object v2, v4

    :goto_1
    const/16 v4, 0xa

    if-ge v10, v4, :cond_1

    .line 114
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

    .line 115
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 116
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

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

    .line 121
    :cond_1
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 122
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    .line 123
    invoke-virtual {v2}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v9

    .line 124
    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {v2}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-virtual {v2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v6

    .line 128
    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    .line 129
    sget-object v7, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

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

    .line 133
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 134
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

    .line 154
    :cond_2
    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v11, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 155
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget v4, Lcom/muvee/mvdronecomposer/theme/lowerthird;->c:I

    if-le v3, v4, :cond_6

    .line 156
    sget v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->d:F

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float/2addr v3, v4

    sput v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->d:F

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 157
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v11, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_3

    .line 113
    :cond_3
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto/16 :goto_1

    .line 135
    :cond_4
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 138
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

    .line 148
    :cond_5
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: addresses is NULL!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v9

    goto :goto_2

    .line 150
    :catch_0
    move-exception v2

    move-object v3, v2

    move-object v2, v9

    .line 151
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 160
    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 161
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 162
    sget v5, Lcom/muvee/mvdronecomposer/theme/lowerthird;->b:I

    sub-int/2addr v5, v3

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 163
    sget v6, Lcom/muvee/mvdronecomposer/theme/lowerthird;->c:I

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x5

    int-to-float v6, v6

    .line 165
    sget v7, Lcom/muvee/mvdronecomposer/theme/lowerthird;->c:I

    sget v8, Lcom/muvee/mvdronecomposer/theme/lowerthird;->b:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 166
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 168
    sget-object v9, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "::makeResource:: bgLocationHeight: "

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v16, Lcom/muvee/mvdronecomposer/theme/lowerthird;->b:I

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v16, ", bgLocationWidth: "

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v16, Lcom/muvee/mvdronecomposer/theme/lowerthird;->c:I

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

    .line 172
    sget v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->b:I

    int-to-float v3, v3

    sub-float/2addr v3, v5

    invoke-virtual {v8, v2, v6, v3, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 175
    :try_start_2
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/styles/lowerthird/txt_location_"

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

    .line 177
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 178
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v7, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 180
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v6, "/styles/lowerthird/txt_location.png"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 182
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 183
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    if-eqz v7, :cond_7

    .line 188
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    :cond_7
    :goto_4
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Location --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Date ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v2, "dd MM yyyy"

    invoke-static {v2, v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

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

    .line 199
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 200
    const/16 v4, -0x4600

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    sget v4, Lcom/muvee/mvdronecomposer/theme/lowerthird;->g:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 202
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 205
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 207
    sget v5, Lcom/muvee/mvdronecomposer/theme/lowerthird;->f:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/lowerthird;->e:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 208
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 210
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 211
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 212
    sget v8, Lcom/muvee/mvdronecomposer/theme/lowerthird;->e:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 213
    sget v9, Lcom/muvee/mvdronecomposer/theme/lowerthird;->f:I

    sub-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x5

    int-to-float v9, v9

    .line 215
    sget-object v10, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "::makeResource:: textDateHeight: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 217
    sget v4, Lcom/muvee/mvdronecomposer/theme/lowerthird;->e:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v9, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 220
    :try_start_3
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/lowerthird/txt_date_"

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

    .line 222
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 223
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 225
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v7, "/styles/lowerthird/txt_date.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 227
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 228
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 232
    if-eqz v5, :cond_8

    .line 233
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 237
    :cond_8
    :goto_5
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Date --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max speed label ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v2, "MAX.SPEED"

    .line 242
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 243
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    sget v4, Lcom/muvee/mvdronecomposer/theme/lowerthird;->j:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 245
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 246
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 248
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 250
    sget v5, Lcom/muvee/mvdronecomposer/theme/lowerthird;->i:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/lowerthird;->h:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 251
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 253
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 254
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 255
    sget v8, Lcom/muvee/mvdronecomposer/theme/lowerthird;->h:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 256
    const/4 v9, 0x0

    .line 258
    sget-object v10, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "::makeResource:: bgFlightDataLabelHeight: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v16, Lcom/muvee/mvdronecomposer/theme/lowerthird;->h:I

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", bgFlightDataLabelWidth: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v16, Lcom/muvee/mvdronecomposer/theme/lowerthird;->i:I

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", textMaxSpeedLabelHeight: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", textMaxSpeedLabelWidth: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", offsetMaxSpeedLabelHeight: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", offsetMaxSpeedLabelWidth: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget v4, Lcom/muvee/mvdronecomposer/theme/lowerthird;->h:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v9, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 264
    :try_start_4
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/lowerthird/txt_max_speed_label_"

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

    .line 266
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 267
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 269
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v7, "/styles/lowerthird/txt_max_speed_label.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 271
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 272
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 276
    if-eqz v5, :cond_9

    .line 277
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 281
    :cond_9
    :goto_6
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max speed label --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max speed value ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->maxSpeed:F

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/theme/lowerthird;->convertKphToMs(F)Ljava/lang/String;

    move-result-object v2

    .line 286
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 287
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 288
    sget v4, Lcom/muvee/mvdronecomposer/theme/lowerthird;->m:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 289
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 290
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 292
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 294
    sget v5, Lcom/muvee/mvdronecomposer/theme/lowerthird;->l:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/lowerthird;->k:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 295
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 297
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 298
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 299
    sget v8, Lcom/muvee/mvdronecomposer/theme/lowerthird;->k:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 300
    const/4 v9, 0x0

    .line 302
    sget-object v10, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "::makeResource:: bgFlightDataValueHeight: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v16, Lcom/muvee/mvdronecomposer/theme/lowerthird;->k:I

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", bgFlightDataValueWidth: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v16, Lcom/muvee/mvdronecomposer/theme/lowerthird;->l:I

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", textMaxSpeedValueHeight: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", textMaxSpeedValueWidth: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", offsetMaxSpeedValueHeight: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", offsetMaxSpeedValueWidth: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget v4, Lcom/muvee/mvdronecomposer/theme/lowerthird;->k:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v9, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 308
    :try_start_5
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/lowerthird/txt_max_speed_value_"

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

    .line 310
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 311
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 313
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v7, "/styles/lowerthird/txt_max_speed_value.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 315
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 316
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 320
    if-eqz v5, :cond_a

    .line 321
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 325
    :cond_a
    :goto_7
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max speed value --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max altitude label ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v2, "MAX.ALTITUDE"

    .line 330
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 331
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    sget v4, Lcom/muvee/mvdronecomposer/theme/lowerthird;->j:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 333
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 334
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 336
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 338
    sget v5, Lcom/muvee/mvdronecomposer/theme/lowerthird;->i:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/lowerthird;->h:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 339
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 341
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 342
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 343
    sget v8, Lcom/muvee/mvdronecomposer/theme/lowerthird;->h:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 344
    const/4 v9, 0x0

    .line 346
    sget-object v10, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "::makeResource:: bgFlightDataLabelHeight: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v16, Lcom/muvee/mvdronecomposer/theme/lowerthird;->h:I

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", bgFlightDataLabelWidth: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v16, Lcom/muvee/mvdronecomposer/theme/lowerthird;->i:I

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", textMaxAltitudeLabelHeight: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", textMaxAltitudeLabelWidth: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", offsetMaxAltitudeLabelHeight: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", offsetMaxAltitudeLabelWidth: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sget v4, Lcom/muvee/mvdronecomposer/theme/lowerthird;->h:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v9, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 352
    :try_start_6
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/lowerthird/txt_max_altitude_label_"

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

    .line 354
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 355
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 357
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v7, "/styles/lowerthird/txt_max_altitude_label.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 359
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 360
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 364
    if-eqz v5, :cond_b

    .line 365
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 369
    :cond_b
    :goto_8
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max altitude label --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max altitude value ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget v3, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->maxAltitude:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 375
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    sget v4, Lcom/muvee/mvdronecomposer/theme/lowerthird;->m:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 377
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 378
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 380
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 382
    sget v5, Lcom/muvee/mvdronecomposer/theme/lowerthird;->l:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/lowerthird;->k:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 383
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 385
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 386
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 387
    sget v8, Lcom/muvee/mvdronecomposer/theme/lowerthird;->k:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 388
    const/4 v9, 0x0

    .line 390
    sget-object v10, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "::makeResource:: bgFlightDataValueHeight: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v16, Lcom/muvee/mvdronecomposer/theme/lowerthird;->k:I

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", bgFlightDataValueWidth: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v16, Lcom/muvee/mvdronecomposer/theme/lowerthird;->l:I

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", textMaxAltitudeValueHeight: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", textMaxAltitudeValueWidth: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", offsetMaxAltitudeValueHeight: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", offsetMaxAltitudeValueWidth: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    sget v4, Lcom/muvee/mvdronecomposer/theme/lowerthird;->k:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v9, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 396
    :try_start_7
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/lowerthird/txt_max_altitude_value_"

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

    .line 398
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 399
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 401
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v7, "/styles/lowerthird/txt_max_altitude_value.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 402
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 403
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 404
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 408
    if-eqz v5, :cond_c

    .line 409
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 413
    :cond_c
    :goto_9
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max altitude value --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: time ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v2, "hha"

    invoke-static {v2, v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

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

    .line 420
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 421
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 422
    sget v4, Lcom/muvee/mvdronecomposer/theme/lowerthird;->p:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 423
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 424
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 426
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 428
    sget v5, Lcom/muvee/mvdronecomposer/theme/lowerthird;->o:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/lowerthird;->n:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 429
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 431
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 432
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 433
    sget v8, Lcom/muvee/mvdronecomposer/theme/lowerthird;->n:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 434
    const/4 v9, 0x0

    .line 436
    sget-object v10, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "::makeResource:: textTimeHeight: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", textTimeWidth: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", offsetTimeHeight: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", offsetTimeWidth: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    sget v4, Lcom/muvee/mvdronecomposer/theme/lowerthird;->n:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v9, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 441
    :try_start_8
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/lowerthird/txt_time_"

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

    .line 443
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 444
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 446
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v7, "/styles/lowerthird/txt_time.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 448
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 449
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 453
    if-eqz v5, :cond_d

    .line 454
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 458
    :cond_d
    :goto_a
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: time --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Flight time ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v2, "FLIGHT TIME"

    .line 463
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-wide v4, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->dataDuration:D

    double-to-long v4, v4

    invoke-static {v4, v5}, Lcom/muvee/mvdronecomposer/theme/lowerthird;->convertSecondsToHMmSs(J)Ljava/lang/String;

    move-result-object v3

    .line 465
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 466
    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 467
    sget v5, Lcom/muvee/mvdronecomposer/theme/lowerthird;->s:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 468
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 469
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 470
    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v2, v6, v7, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 472
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 473
    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 474
    sget v7, Lcom/muvee/mvdronecomposer/theme/lowerthird;->s:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 475
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 476
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 478
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 479
    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v3, v8, v9, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 481
    sget v7, Lcom/muvee/mvdronecomposer/theme/lowerthird;->r:I

    sget v8, Lcom/muvee/mvdronecomposer/theme/lowerthird;->q:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 482
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 484
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 485
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 486
    sget v11, Lcom/muvee/mvdronecomposer/theme/lowerthird;->q:I

    sub-int/2addr v11, v9

    int-to-float v11, v11

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v11, v14

    .line 487
    const/4 v14, 0x0

    .line 489
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 490
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 491
    sget v5, Lcom/muvee/mvdronecomposer/theme/lowerthird;->q:I

    sub-int/2addr v5, v15

    int-to-float v5, v5

    const/high16 v16, 0x40000000    # 2.0f

    div-float v5, v5, v16

    .line 492
    add-int/lit8 v16, v10, 0xf

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    .line 494
    sget-object v17, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "::makeResource:: bgFlightTimeHeight: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/muvee/mvdronecomposer/theme/lowerthird;->q:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", bgFlightTimeWidth: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/muvee/mvdronecomposer/theme/lowerthird;->r:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", textFlightTimeLabelHeight: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v18, ", textFlightTimeLabelWidth: "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", textFlightTimeLabelHeight: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", textFlightTimeLabelWidth: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", offsetFlightTimeLabelHeight: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", offsetFlightTimeLabelWidth: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", offsetFlightTimeValueHeight: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", offsetFlightTimeValueWidth: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    sget v9, Lcom/muvee/mvdronecomposer/theme/lowerthird;->q:I

    int-to-float v9, v9

    sub-float/2addr v9, v11

    invoke-virtual {v8, v2, v14, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 501
    sget v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->q:I

    int-to-float v2, v2

    sub-float/2addr v2, v5

    move/from16 v0, v16

    invoke-virtual {v8, v3, v0, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 504
    :try_start_9
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/styles/lowerthird/txt_flight_time_"

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

    .line 506
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 507
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v7, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 509
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v6, "/styles/lowerthird/txt_flight_time.png"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 510
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 511
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 512
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 516
    if-eqz v7, :cond_e

    .line 517
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 521
    :cond_e
    :goto_b
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Flight time --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: map trace ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    sget v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->u:I

    sget v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->t:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/muvee/mvdronecomposer/theme/diagonal;->getBitmapFromURL(IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 527
    if-eqz v3, :cond_19

    .line 529
    :try_start_a
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/lowerthird/img_map_trace_"

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

    .line 531
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 532
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v3, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 534
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v7, "/styles/lowerthird/img_map_trace.png"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 535
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 536
    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 537
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 541
    if-eqz v3, :cond_f

    .line 542
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 601
    :cond_f
    :goto_c
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: map trace --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

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

    .line 603
    return-void

    .line 184
    :catch_1
    move-exception v2

    .line 185
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 187
    if-eqz v7, :cond_7

    .line 188
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_4

    .line 187
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_10

    .line 188
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 189
    :cond_10
    throw v2

    .line 229
    :catch_2
    move-exception v2

    .line 230
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 232
    if-eqz v5, :cond_8

    .line 233
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_5

    .line 232
    :catchall_1
    move-exception v2

    if-eqz v5, :cond_11

    .line 233
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 234
    :cond_11
    throw v2

    .line 273
    :catch_3
    move-exception v2

    .line 274
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 276
    if-eqz v5, :cond_9

    .line 277
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_6

    .line 276
    :catchall_2
    move-exception v2

    if-eqz v5, :cond_12

    .line 277
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 278
    :cond_12
    throw v2

    .line 317
    :catch_4
    move-exception v2

    .line 318
    :try_start_e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 320
    if-eqz v5, :cond_a

    .line 321
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_7

    .line 320
    :catchall_3
    move-exception v2

    if-eqz v5, :cond_13

    .line 321
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 322
    :cond_13
    throw v2

    .line 361
    :catch_5
    move-exception v2

    .line 362
    :try_start_f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 364
    if-eqz v5, :cond_b

    .line 365
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_8

    .line 364
    :catchall_4
    move-exception v2

    if-eqz v5, :cond_14

    .line 365
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 366
    :cond_14
    throw v2

    .line 405
    :catch_6
    move-exception v2

    .line 406
    :try_start_10
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 408
    if-eqz v5, :cond_c

    .line 409
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_9

    .line 408
    :catchall_5
    move-exception v2

    if-eqz v5, :cond_15

    .line 409
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 410
    :cond_15
    throw v2

    .line 450
    :catch_7
    move-exception v2

    .line 451
    :try_start_11
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 453
    if-eqz v5, :cond_d

    .line 454
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_a

    .line 453
    :catchall_6
    move-exception v2

    if-eqz v5, :cond_16

    .line 454
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 455
    :cond_16
    throw v2

    .line 513
    :catch_8
    move-exception v2

    .line 514
    :try_start_12
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 516
    if-eqz v7, :cond_e

    .line 517
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_b

    .line 516
    :catchall_7
    move-exception v2

    if-eqz v7, :cond_17

    .line 517
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 518
    :cond_17
    throw v2

    .line 538
    :catch_9
    move-exception v2

    .line 539
    :try_start_13
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 541
    if-eqz v3, :cond_f

    .line 542
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_c

    .line 541
    :catchall_8
    move-exception v2

    if-eqz v3, :cond_18

    .line 542
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 543
    :cond_18
    throw v2

    .line 547
    :cond_19
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v4, "/styles/diagonal/pin_a.png"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 548
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v5, "/styles/diagonal/pin_b.png"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 550
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 551
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 553
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 554
    const/4 v2, -0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 555
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 556
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 558
    sget v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->u:I

    sget v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->t:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 559
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 561
    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d

    .line 562
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::makeResource:: bgMapTraceWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/muvee/mvdronecomposer/theme/lowerthird;->u:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bgMapTraceHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/muvee/mvdronecomposer/theme/lowerthird;->t:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    sget v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->u:I

    sget v4, Lcom/muvee/mvdronecomposer/theme/lowerthird;->t:I

    invoke-static {v3, v4}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->setDrawblePointXY(II)V

    .line 564
    const/4 v3, 0x0

    move v8, v3

    :goto_d
    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    if-ge v8, v3, :cond_1a

    .line 565
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

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

    .line 567
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

    .line 564
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto/16 :goto_d

    .line 569
    :cond_1a
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

    invoke-virtual {v2, v9, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 570
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

    invoke-virtual {v2, v10, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 575
    :goto_e
    :try_start_14
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/styles/lowerthird/img_map_trace_"

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

    .line 577
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 578
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v11, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 580
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/muvee/mvdronecomposer/theme/lowerthird;->x:Ljava/io/File;

    const-string v6, "/styles/lowerthird/img_map_trace.png"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 581
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 582
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 583
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 587
    if-eqz v11, :cond_1b

    .line 588
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 591
    :cond_1b
    if-eqz v9, :cond_1c

    .line 592
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 595
    :cond_1c
    if-eqz v10, :cond_f

    .line 596
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_c

    .line 572
    :cond_1d
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/lowerthird;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: location data wrong!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 584
    :catch_a
    move-exception v2

    .line 585
    :try_start_15
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 587
    if-eqz v11, :cond_1e

    .line 588
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 591
    :cond_1e
    if-eqz v9, :cond_1f

    .line 592
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 595
    :cond_1f
    if-eqz v10, :cond_f

    .line 596
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_c

    .line 587
    :catchall_9
    move-exception v2

    if-eqz v11, :cond_20

    .line 588
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 591
    :cond_20
    if-eqz v9, :cond_21

    .line 592
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 595
    :cond_21
    if-eqz v10, :cond_22

    .line 596
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 597
    :cond_22
    throw v2

    :cond_23
    move-object v9, v2

    goto/16 :goto_0
.end method
