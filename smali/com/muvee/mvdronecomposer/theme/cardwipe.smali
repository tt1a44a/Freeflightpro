.class public Lcom/muvee/mvdronecomposer/theme/cardwipe;
.super Ljava/lang/Object;
.source "cardwipe.java"


# static fields
.field private static A:I

.field private static B:F

.field private static C:I

.field private static D:I

.field private static E:I

.field private static F:I

.field private static G:Ljava/io/File;

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

.field private static v:F

.field private static w:I

.field private static x:I

.field private static y:F

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x4b

    const/16 v4, 0x2d

    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v2, 0x41f00000    # 30.0f

    const/16 v1, 0xe6

    .line 49
    const-class v0, Lcom/muvee/mvdronecomposer/theme/cardwipe;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    .line 51
    const/16 v0, 0x87

    sput v0, Lcom/muvee/mvdronecomposer/theme/cardwipe;->b:I

    .line 52
    const/16 v0, 0x3e8

    sput v0, Lcom/muvee/mvdronecomposer/theme/cardwipe;->c:I

    .line 53
    const/high16 v0, 0x42b40000    # 90.0f

    sput v0, Lcom/muvee/mvdronecomposer/theme/cardwipe;->d:F

    .line 55
    const/16 v0, 0x3c

    sput v0, Lcom/muvee/mvdronecomposer/theme/cardwipe;->e:I

    .line 56
    const/16 v0, 0xf0

    sput v0, Lcom/muvee/mvdronecomposer/theme/cardwipe;->f:I

    .line 57
    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lcom/muvee/mvdronecomposer/theme/cardwipe;->g:F

    .line 59
    const/16 v0, 0x3c

    sput v0, Lcom/muvee/mvdronecomposer/theme/cardwipe;->h:I

    .line 60
    const/16 v0, 0xa0

    sput v0, Lcom/muvee/mvdronecomposer/theme/cardwipe;->i:I

    .line 61
    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lcom/muvee/mvdronecomposer/theme/cardwipe;->j:F

    .line 63
    sput v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->k:I

    .line 64
    sput v1, Lcom/muvee/mvdronecomposer/theme/cardwipe;->l:I

    .line 65
    sput v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->m:F

    .line 66
    sput v5, Lcom/muvee/mvdronecomposer/theme/cardwipe;->n:I

    .line 67
    sput v1, Lcom/muvee/mvdronecomposer/theme/cardwipe;->o:I

    .line 68
    sput v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->p:F

    .line 70
    sput v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->q:I

    .line 71
    const/16 v0, 0x104

    sput v0, Lcom/muvee/mvdronecomposer/theme/cardwipe;->r:I

    .line 72
    sput v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->s:F

    .line 73
    sput v5, Lcom/muvee/mvdronecomposer/theme/cardwipe;->t:I

    .line 74
    const/16 v0, 0x104

    sput v0, Lcom/muvee/mvdronecomposer/theme/cardwipe;->u:I

    .line 75
    sput v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->v:F

    .line 77
    sput v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->w:I

    .line 78
    sput v1, Lcom/muvee/mvdronecomposer/theme/cardwipe;->x:I

    .line 79
    sput v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->y:F

    .line 80
    sput v5, Lcom/muvee/mvdronecomposer/theme/cardwipe;->z:I

    .line 81
    sput v1, Lcom/muvee/mvdronecomposer/theme/cardwipe;->A:I

    .line 82
    sput v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->B:F

    .line 84
    const/16 v0, 0x142

    sput v0, Lcom/muvee/mvdronecomposer/theme/cardwipe;->C:I

    .line 85
    const/16 v0, 0x142

    sput v0, Lcom/muvee/mvdronecomposer/theme/cardwipe;->D:I

    .line 87
    const/16 v0, 0x60

    sput v0, Lcom/muvee/mvdronecomposer/theme/cardwipe;->E:I

    .line 88
    const/16 v0, 0x37

    sput v0, Lcom/muvee/mvdronecomposer/theme/cardwipe;->F:I

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

    .line 2728
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    const/high16 v1, 0x45610000    # 3600.0f

    div-float/2addr v0, v1

    .line 2729
    sget-object v1, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

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

    .line 2730
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

    .line 2721
    rem-long v0, p0, v2

    .line 2722
    div-long v0, p0, v2

    rem-long/2addr v0, v2

    .line 2723
    const-wide/16 v2, 0xe10

    div-long v2, p0, v2

    const-wide/16 v4, 0x18

    rem-long/2addr v2, v4

    .line 2724
    const-string v4, "%dh %dm"

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
    .locals 25

    .prologue
    .line 659
    const/4 v3, 0x1

    .line 661
    const/4 v2, 0x0

    .line 662
    sget-boolean v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_IN_EFFECT_WHEN_START:Z

    if-eqz v4, :cond_0

    .line 663
    const/4 v3, 0x2

    .line 664
    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->VIDEO_FADE_IN_DURATION:I

    .line 667
    :cond_0
    const/4 v4, 0x0

    .line 668
    sget-boolean v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_OUT_EFFECT_WHEN_CLOSE:Z

    if-eqz v5, :cond_26

    .line 669
    add-int/lit8 v4, v3, 0x1

    .line 670
    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->VIDEO_FADE_OUT_DURATION:I

    move v5, v3

    .line 673
    :goto_0
    const/4 v3, 0x0

    .line 674
    sub-long v6, p1, p3

    int-to-long v8, v2

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1770

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 675
    const/4 v3, 0x1

    .line 676
    add-int/lit8 v4, v4, 0x1

    .line 679
    :cond_1
    sget-object v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

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

    .line 681
    new-array v6, v4, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    .line 683
    const/4 v4, -0x1

    .line 686
    sget-boolean v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_IN_EFFECT_WHEN_START:Z

    if-eqz v7, :cond_2

    .line 688
    const/4 v4, 0x0

    .line 691
    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v7, v6, v4

    .line 692
    aget-object v7, v6, v4

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 693
    aget-object v7, v6, v4

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 695
    const/16 v7, 0xc

    .line 696
    aget-object v8, v6, v4

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v7, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 698
    const/4 v7, 0x0

    .line 699
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 700
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 701
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 702
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 703
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 704
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, -0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 705
    const/4 v7, 0x1

    .line 706
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 707
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_RGBColorR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 708
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 709
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 710
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 711
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 712
    const/4 v7, 0x2

    .line 713
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 714
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorIntensityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 715
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 716
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 717
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 718
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/16 v8, 0x64

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 719
    const/4 v7, 0x3

    .line 720
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 721
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorLayer:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 722
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 723
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 724
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 725
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x2

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 726
    const/4 v7, 0x4

    .line 727
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 728
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 729
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 730
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 731
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 732
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 733
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/16 v8, 0x1f4

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 734
    const/4 v7, 0x5

    .line 735
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 736
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 737
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 738
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 739
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 740
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 741
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/16 v8, 0x1f4

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 742
    const/4 v7, 0x6

    .line 743
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 744
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 745
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 746
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 747
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 748
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 749
    const/4 v7, 0x7

    .line 750
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 751
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 752
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 753
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 754
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 755
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 756
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/16 v8, 0x3e8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 757
    const/16 v7, 0x8

    .line 758
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 759
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 760
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 761
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 762
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 763
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 764
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/16 v8, 0x3e8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 765
    const/16 v7, 0x9

    .line 766
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 767
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 768
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x2

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 769
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 770
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 771
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 772
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/16 v9, 0x64

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 773
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 774
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/16 v9, 0x3e8

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 775
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 776
    const/16 v7, 0xa

    .line 777
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 778
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 779
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 780
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 781
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 782
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/16 v8, 0x8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 783
    const/16 v7, 0xb

    .line 784
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v9, v8, v7

    .line 785
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 786
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 787
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 788
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v8, v9

    .line 789
    aget-object v8, v6, v4

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v8, v7

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 792
    :cond_2
    sget-boolean v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_OUT_EFFECT_WHEN_CLOSE:Z

    if-eqz v7, :cond_3

    .line 794
    add-int/lit8 v4, v4, 0x1

    .line 797
    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v7, v6, v4

    .line 798
    aget-object v7, v6, v4

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 799
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

    .line 801
    const/16 v5, 0xc

    .line 802
    aget-object v7, v6, v4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v5, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 804
    const/4 v5, 0x0

    .line 805
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 806
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 807
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 808
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 809
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 810
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/4 v7, -0x1

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 811
    const/4 v5, 0x1

    .line 812
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 813
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_RGBColorR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 814
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 815
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 816
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 817
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/4 v7, 0x0

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 818
    const/4 v5, 0x2

    .line 819
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 820
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorIntensityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 821
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 822
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 823
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 824
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/16 v7, 0x64

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 825
    const/4 v5, 0x3

    .line 826
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 827
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorLayer:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 828
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 829
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 830
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 831
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/4 v7, 0x2

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 832
    const/4 v5, 0x4

    .line 833
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 834
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 835
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 836
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 837
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 838
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 839
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/16 v7, 0x1f4

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 840
    const/4 v5, 0x5

    .line 841
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 842
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 843
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 844
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 845
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 846
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 847
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/16 v7, 0x1f4

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 848
    const/4 v5, 0x6

    .line 849
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 850
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 851
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 852
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 853
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 854
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/4 v7, 0x1

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 855
    const/4 v5, 0x7

    .line 856
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 857
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 858
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 859
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 860
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 861
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 862
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/16 v7, 0x3e8

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 863
    const/16 v5, 0x8

    .line 864
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 865
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 866
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 867
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 868
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 869
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 870
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/16 v7, 0x3e8

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 871
    const/16 v5, 0x9

    .line 872
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 873
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 874
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x2

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 875
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 876
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 877
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 878
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 879
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x1

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 880
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/16 v8, 0x3e8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 881
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    const/16 v7, 0x64

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 882
    const/16 v5, 0xa

    .line 883
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 884
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 885
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 886
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 887
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 888
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/16 v7, 0x8

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 889
    const/16 v5, 0xb

    .line 890
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v5

    .line 891
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 892
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 893
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 894
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 895
    aget-object v7, v6, v4

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/4 v7, 0x0

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 898
    :cond_3
    if-eqz v3, :cond_25

    .line 900
    add-int/lit8 v3, v4, 0x1

    .line 903
    sget-object v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

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

    .line 905
    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v4, v6, v3

    .line 906
    aget-object v4, v6, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 907
    aget-object v4, v6, v3

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    add-int/lit16 v7, v2, 0xc8

    add-int/lit16 v2, v2, 0x1450

    invoke-direct {v5, v7, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 909
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 910
    sget-object v4, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v4

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 911
    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 912
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v7, "/styles/cardwipe/img_databg_4.png"

    invoke-direct {v4, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 914
    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 915
    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 916
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 917
    new-instance v5, Ljava/io/File;

    sget-object v7, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v8, "/styles/cardwipe/img_databg_3.png"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 919
    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 920
    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 921
    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 922
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v9, "/styles/cardwipe/img_databg_2.png"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 924
    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 925
    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 926
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 927
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v10, "/styles/cardwipe/img_databg_1.png"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 929
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 930
    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 931
    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 932
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v11, "/styles/cardwipe/img_locationmark.png"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 934
    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 935
    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 936
    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 937
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v12, "/styles/cardwipe/txt_location.png"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 939
    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 940
    sget-object v11, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v11

    iput v11, v10, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 941
    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v11, v10, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 942
    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v13, "/styles/cardwipe/img_map_bg.png"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 944
    new-instance v11, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v11}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 945
    sget-object v12, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v12}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v12

    iput v12, v11, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 946
    new-instance v12, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v12, v11, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 947
    new-instance v12, Ljava/io/File;

    sget-object v13, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v14, "/styles/cardwipe/img_map_outline.png"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 949
    new-instance v12, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v12}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 950
    sget-object v13, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v13}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v13

    iput v13, v12, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 951
    new-instance v13, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v13, v12, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 952
    new-instance v13, Ljava/io/File;

    sget-object v14, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v15, "/styles/cardwipe/img_map_trace.png"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 954
    new-instance v13, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v13}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 955
    sget-object v14, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v14}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v14

    iput v14, v13, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 956
    new-instance v14, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v14, v13, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 957
    new-instance v14, Ljava/io/File;

    sget-object v15, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v16, "/styles/cardwipe/txt_date.png"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 959
    new-instance v14, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v14}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 960
    sget-object v15, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v15}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v15

    iput v15, v14, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 961
    new-instance v15, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v15, v14, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 962
    new-instance v15, Ljava/io/File;

    sget-object v16, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v17, "/styles/cardwipe/txt_time.png"

    invoke-direct/range {v15 .. v17}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 964
    new-instance v15, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v15}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 965
    sget-object v16, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual/range {v16 .. v16}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 966
    new-instance v16, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 967
    new-instance v16, Ljava/io/File;

    sget-object v17, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v18, "/styles/cardwipe/txt_max_speed_label.png"

    invoke-direct/range {v16 .. v18}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 969
    new-instance v16, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct/range {v16 .. v16}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 970
    sget-object v17, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID13:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual/range {v17 .. v17}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 971
    new-instance v17, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 972
    new-instance v17, Ljava/io/File;

    sget-object v18, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v19, "/styles/cardwipe/txt_max_speed_value.png"

    invoke-direct/range {v17 .. v19}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 974
    new-instance v17, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct/range {v17 .. v17}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 975
    sget-object v18, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID14:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual/range {v18 .. v18}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 976
    new-instance v18, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 977
    new-instance v18, Ljava/io/File;

    sget-object v19, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v20, "/styles/cardwipe/txt_max_altitude_label.png"

    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 979
    new-instance v18, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct/range {v18 .. v18}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 980
    sget-object v19, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID15:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual/range {v19 .. v19}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 981
    new-instance v19, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 982
    new-instance v19, Ljava/io/File;

    sget-object v20, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v21, "/styles/cardwipe/txt_max_altitude_value.png"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 984
    new-instance v19, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct/range {v19 .. v19}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 985
    sget-object v20, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID16:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual/range {v20 .. v20}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 986
    new-instance v20, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 987
    new-instance v20, Ljava/io/File;

    sget-object v21, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v22, "/styles/cardwipe/txt_flight_time_label.png"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 989
    new-instance v20, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct/range {v20 .. v20}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 990
    sget-object v21, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID17:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual/range {v21 .. v21}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 991
    new-instance v21, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 992
    new-instance v21, Ljava/io/File;

    sget-object v22, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v23, "/styles/cardwipe/txt_flight_time_value.png"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 998
    aget-object v21, v6, v3

    const/16 v22, 0x11

    move/from16 v0, v22

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v7, v22, v23

    const/4 v7, 0x1

    aput-object v5, v22, v7

    const/4 v5, 0x2

    aput-object v4, v22, v5

    const/4 v4, 0x3

    aput-object v2, v22, v4

    const/4 v2, 0x4

    aput-object v8, v22, v2

    const/4 v2, 0x5

    aput-object v9, v22, v2

    const/4 v2, 0x6

    aput-object v10, v22, v2

    const/4 v2, 0x7

    aput-object v11, v22, v2

    const/16 v2, 0x8

    aput-object v12, v22, v2

    const/16 v2, 0x9

    aput-object v13, v22, v2

    const/16 v2, 0xa

    aput-object v14, v22, v2

    const/16 v2, 0xb

    aput-object v15, v22, v2

    const/16 v2, 0xc

    aput-object v16, v22, v2

    const/16 v2, 0xd

    aput-object v17, v22, v2

    const/16 v2, 0xe

    aput-object v18, v22, v2

    const/16 v2, 0xf

    aput-object v19, v22, v2

    const/16 v2, 0x10

    aput-object v20, v22, v2

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->resourceList:[Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    .line 1005
    const/16 v2, 0x8c

    .line 1009
    aget-object v4, v6, v3

    new-array v2, v2, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v2, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1012
    const/4 v2, 0x0

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

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1015
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1016
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1017
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1018
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1019
    const/4 v2, 0x1

    .line 1020
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1021
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1022
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1023
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1024
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1025
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1026
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1027
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, -0x109

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1028
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1029
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x6e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1030
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, -0x109

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1031
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1032
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x96

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1033
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x109

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1034
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1035
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x370

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1036
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x109

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1037
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1038
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x384

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1039
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, -0x109

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1040
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1041
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1042
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, -0x109

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1043
    const/4 v2, 0x2

    .line 1044
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1045
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1046
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1047
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1048
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1049
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1050
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x8c

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1051
    const/4 v2, 0x3

    .line 1052
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1053
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1054
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1055
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1056
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1057
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1058
    const/4 v2, 0x4

    .line 1059
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1060
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1061
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1062
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1063
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1064
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1065
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x1e8

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1066
    const/4 v2, 0x5

    .line 1067
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1068
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1069
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1070
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1071
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1072
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1073
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x76

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1074
    const/4 v2, 0x6

    .line 1075
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1076
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1077
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1078
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1079
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1080
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1081
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1087
    :goto_1
    const/4 v2, 0x7

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

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1090
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1091
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1092
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1093
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1094
    const/16 v2, 0x8

    .line 1095
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1096
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1097
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1098
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1099
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1100
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1101
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1102
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, -0xc3

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1103
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1104
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x50

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1105
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, -0xc3

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1106
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1107
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x6e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1108
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xc3

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1109
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1110
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x38e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1111
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0xc3

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1112
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1113
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x3a2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1114
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, -0xc3

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1115
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1116
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1117
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, -0xc3

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1118
    const/16 v2, 0x9

    .line 1119
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1120
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1121
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1122
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1123
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1124
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1125
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x8c

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1126
    const/16 v2, 0xa

    .line 1127
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1128
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1129
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1130
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1131
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1132
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1133
    const/16 v2, 0xb

    .line 1134
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1135
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1136
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1137
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1138
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1139
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1140
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x15b

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1141
    const/16 v2, 0xc

    .line 1142
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1143
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1144
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1145
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1146
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1147
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1148
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x76

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1149
    const/16 v2, 0xd

    .line 1150
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1151
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1152
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1153
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1154
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1155
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1156
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1162
    :goto_2
    const/16 v2, 0xe

    .line 1163
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1164
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1165
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1166
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1167
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1168
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1169
    const/16 v2, 0xf

    .line 1170
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1171
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1172
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1173
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1174
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1175
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1176
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1177
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, -0x73

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1178
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1179
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x28

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1180
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, -0x73

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1181
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1182
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x50

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1183
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x73

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1184
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1185
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3ac

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1186
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x73

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1187
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1188
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x3c0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1189
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, -0x73

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1190
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1191
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1192
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, -0x73

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1193
    const/16 v2, 0x10

    .line 1194
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1195
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1196
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1197
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1198
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1199
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1200
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x8c

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1201
    const/16 v2, 0x11

    .line 1202
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1203
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1204
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1205
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1206
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1207
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1208
    const/16 v2, 0x12

    .line 1209
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1210
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1211
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1212
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1213
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1214
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1215
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xbe

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1216
    const/16 v2, 0x13

    .line 1217
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1218
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1219
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1220
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1221
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1222
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1223
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x76

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1224
    const/16 v2, 0x14

    .line 1225
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1226
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1227
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1228
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1229
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1230
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1231
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1237
    :goto_3
    const/16 v2, 0x15

    .line 1238
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1239
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1240
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1241
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1242
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1243
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1244
    const/16 v2, 0x16

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

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

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

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1249
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

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

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1252
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, -0x2d

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1253
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1254
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xa

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1255
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, -0x2d

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1256
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1257
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x32

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1258
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x2d

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1259
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1260
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3ca

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1261
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x2d

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1262
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1263
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x3de

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1264
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, -0x2d

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1265
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1266
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1267
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, -0x2d

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1268
    const/16 v2, 0x17

    .line 1269
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1270
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1271
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1272
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1273
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1274
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1275
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x8c

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1276
    const/16 v2, 0x18

    .line 1277
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1278
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1279
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1280
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1281
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1282
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1283
    const/16 v2, 0x19

    .line 1284
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1285
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1286
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1287
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1288
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1289
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1290
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x32

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1291
    const/16 v2, 0x1a

    .line 1292
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1293
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1294
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1295
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1296
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1297
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1298
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x76

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1299
    const/16 v2, 0x1b

    .line 1300
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1301
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1302
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1303
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1304
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1305
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1306
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1312
    :goto_4
    const/16 v2, 0x1c

    .line 1313
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1314
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1315
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1316
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1317
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1318
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1319
    const/16 v2, 0x1d

    .line 1320
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1321
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1322
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1323
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1324
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1325
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1326
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1327
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x50

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1328
    const/16 v2, 0x1e

    .line 1329
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1330
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1331
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1332
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1333
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1334
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1335
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1336
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x17c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1337
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1338
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x8c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1339
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x17c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1340
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1341
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xc8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1342
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x159

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1343
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1344
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x32a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1345
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x159

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1346
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1347
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x352

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1348
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x17c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1349
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1350
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1351
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x17c

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1352
    const/16 v2, 0x1f

    .line 1353
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1354
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1355
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1356
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1357
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1358
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1359
    const/16 v2, 0x20

    .line 1360
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1361
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1362
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1363
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1364
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1365
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1366
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x24

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1367
    const/16 v2, 0x21

    .line 1368
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1369
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1370
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1371
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1372
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1373
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1374
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x41

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1375
    const/16 v2, 0x22

    .line 1376
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1377
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1378
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1379
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1380
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1381
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1382
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1383
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1384
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x8c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1385
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1386
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1387
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xc8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1388
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v4

    if-nez v4, :cond_4

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_13

    .line 1389
    :cond_4
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1393
    :goto_5
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1394
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x32a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1395
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v4

    if-nez v4, :cond_5

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_14

    .line 1396
    :cond_5
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1400
    :goto_6
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1401
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x352

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1402
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1403
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1404
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1405
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1408
    const/16 v2, 0x23

    .line 1409
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1410
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1411
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1412
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1413
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1414
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1415
    const/16 v2, 0x24

    .line 1416
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1417
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1418
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1419
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1420
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1421
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1422
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1423
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, -0xa0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1424
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1425
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1426
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, -0xa0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1427
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1428
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x10e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1429
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x168

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1430
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1431
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x38e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1432
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x168

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1433
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1434
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x3a2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1435
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, -0xa0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1436
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1437
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1438
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, -0xa0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1439
    const/16 v2, 0x25

    .line 1440
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1441
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1442
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1443
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1444
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1445
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1446
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x140

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1447
    const/16 v2, 0x26

    .line 1448
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1449
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1450
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1451
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1452
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1453
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1454
    const/16 v2, 0x27

    .line 1455
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1456
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1457
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1458
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1459
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1460
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1461
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x208

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1462
    const/16 v2, 0x28

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

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1465
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1466
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1467
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1468
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1469
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x7d

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1470
    const/16 v2, 0x29

    .line 1471
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1472
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1473
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1474
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1475
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1476
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v4

    if-nez v4, :cond_6

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_15

    .line 1477
    :cond_6
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1481
    :goto_7
    const/16 v2, 0x2a

    .line 1482
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1483
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX06:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1484
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1485
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1486
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1487
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1488
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1489
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1490
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1491
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1492
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1493
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x10e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1494
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1495
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1496
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x38e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1497
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1498
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1499
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x3a2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1500
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1501
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1502
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1503
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1506
    const/16 v2, 0x2b

    .line 1507
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1508
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1509
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1510
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1511
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1512
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1513
    const/16 v2, 0x2c

    .line 1514
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1515
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1516
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1517
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1518
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1519
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1520
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x96

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1521
    const/16 v2, 0x2d

    .line 1522
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1523
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1524
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1525
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1526
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1527
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1528
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x212

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1529
    const/16 v2, 0x2e

    .line 1530
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1531
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1532
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1533
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1534
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1535
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1536
    const/16 v2, 0x2f

    .line 1537
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1538
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1539
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1540
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1541
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

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

    const/16 v5, 0x87

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

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1547
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x87

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

    const/16 v5, 0x14a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1550
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xa8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1551
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1552
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x348

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1553
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0xa8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1554
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1555
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x35c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1556
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x87

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1557
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1558
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1559
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x87

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1560
    const/16 v2, 0x30

    .line 1561
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1562
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1563
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1564
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1565
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1566
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1567
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1568
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0xee

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1569
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1570
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1571
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xee

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1572
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1573
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x14a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1574
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x12a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1575
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1576
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x348

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1577
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x12a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1578
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1579
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x35c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1580
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0xee

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1581
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1582
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1583
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0xee

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1584
    const/16 v2, 0x31

    .line 1585
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1586
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1587
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1588
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1589
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1590
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1591
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1592
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1593
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1594
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1595
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1596
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x14a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1597
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v4

    if-nez v4, :cond_7

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    .line 1598
    :cond_7
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1602
    :goto_8
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1603
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x348

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1604
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v4

    if-nez v4, :cond_8

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_17

    .line 1605
    :cond_8
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1609
    :goto_9
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1610
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x35c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1611
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1612
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1613
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1614
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1617
    const/16 v2, 0x32

    .line 1618
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1619
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1620
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1621
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1622
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1623
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1624
    const/16 v2, 0x33

    .line 1625
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1626
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1627
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1628
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1629
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1630
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1631
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x96

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1632
    const/16 v2, 0x34

    .line 1633
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1634
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1635
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1636
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1637
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1638
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1639
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x212

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1640
    const/16 v2, 0x35

    .line 1641
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1642
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1643
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1644
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1645
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1646
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1647
    const/16 v2, 0x36

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

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1650
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1651
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1652
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1653
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1654
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1655
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x87

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1656
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1657
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1658
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x87

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1659
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1660
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x104

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1661
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xa8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1662
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1663
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x370

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1664
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0xa8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1665
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1666
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x38e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1667
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x87

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1668
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1669
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1670
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x87

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1671
    const/16 v2, 0x37

    .line 1672
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1673
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1674
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1675
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1676
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1677
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1678
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1679
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0xee

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1680
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1681
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1682
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xee

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1683
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1684
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x104

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1685
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x12a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1686
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1687
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x370

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1688
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x12a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1689
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1690
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x38e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1691
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0xee

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1692
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1693
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1694
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0xee

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1695
    const/16 v2, 0x38

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

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1698
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1699
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1700
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1701
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1702
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1703
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1704
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1705
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1706
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1707
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x104

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1708
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v4

    if-nez v4, :cond_9

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_18

    .line 1709
    :cond_9
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1713
    :goto_a
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1714
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x370

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1715
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v4

    if-nez v4, :cond_a

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_19

    .line 1716
    :cond_a
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1720
    :goto_b
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1721
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x38e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1722
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1723
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1724
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1725
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1728
    const/16 v2, 0x39

    .line 1729
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1730
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1731
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1732
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1733
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1734
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1735
    const/16 v2, 0x3a

    .line 1736
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1737
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1738
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1739
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1740
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1741
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1742
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x96

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1743
    const/16 v2, 0x3b

    .line 1744
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1745
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1746
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1747
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1748
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1749
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1750
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x212

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1751
    const/16 v2, 0x3c

    .line 1752
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1753
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1754
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1755
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1756
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1757
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1758
    const/16 v2, 0x3d

    .line 1759
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1760
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1761
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1762
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1763
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1764
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1765
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1766
    const/16 v2, 0x3e

    .line 1767
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1768
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1769
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1770
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1771
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1772
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1773
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x11b

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1774
    const/16 v2, 0x3f

    .line 1775
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1776
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR9:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1777
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1778
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1779
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1780
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1781
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1782
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1783
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x168

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1784
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1785
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1786
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x172

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1787
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v4

    if-nez v4, :cond_b

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1a

    .line 1788
    :cond_b
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1792
    :goto_c
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1793
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x33e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1794
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v4

    if-nez v4, :cond_c

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1b

    .line 1795
    :cond_c
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1799
    :goto_d
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1800
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x348

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1801
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1802
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1803
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1804
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1807
    const/16 v2, 0x40

    .line 1808
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1809
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

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

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1814
    const/16 v2, 0x41

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

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

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

    const/16 v5, 0x28

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

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1825
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x28

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

    const/16 v5, 0x14a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1828
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xa5

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

    const/16 v5, 0x370

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1831
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0xa5

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

    const/16 v5, 0x384

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1834
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x28

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

    const/16 v4, 0x28

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1838
    const/16 v2, 0x42

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

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1841
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1842
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1843
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1844
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1845
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xe6

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1846
    const/16 v2, 0x43

    .line 1847
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1848
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

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

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1853
    const/16 v2, 0x44

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

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

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

    const/16 v4, 0x7d

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1861
    const/16 v2, 0x45

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

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1864
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1865
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1866
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1867
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1868
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x38

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1869
    const/16 v2, 0x46

    .line 1870
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1871
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR10:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1872
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1873
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1874
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1875
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v4

    if-nez v4, :cond_d

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1c

    .line 1876
    :cond_d
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1880
    :goto_e
    const/16 v2, 0x47

    .line 1881
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1882
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX010:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1883
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1884
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1885
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1886
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1887
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1888
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1889
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1890
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1891
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1892
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x14a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1893
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1894
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1895
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x370

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1896
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1897
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1898
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x384

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1899
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1900
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1901
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1902
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1905
    const/16 v2, 0x48

    .line 1906
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1907
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

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

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1912
    const/16 v2, 0x49

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

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

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

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1917
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

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

    const/16 v5, 0xdc

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

    const/16 v5, 0x136

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1923
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xdc

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

    const/16 v5, 0x168

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1926
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x12c

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

    const/16 v5, 0x348

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1929
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x12c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1930
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1931
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x35c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1932
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0xdc

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1933
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1934
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1935
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0xdc

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1936
    const/16 v2, 0x4a

    .line 1937
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1938
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1939
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1940
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1941
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1942
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1943
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xe6

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1944
    const/16 v2, 0x4b

    .line 1945
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1946
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1947
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1948
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1949
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1950
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1951
    const/16 v2, 0x4c

    .line 1952
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1953
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1954
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1955
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1956
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1957
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1958
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x53

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1959
    const/16 v2, 0x4d

    .line 1960
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1961
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1962
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1963
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1964
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1965
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1966
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x38

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1967
    const/16 v2, 0x4e

    .line 1968
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1969
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR11:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1970
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1971
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1972
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1973
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v4

    if-nez v4, :cond_e

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1d

    .line 1974
    :cond_e
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1978
    :goto_f
    const/16 v2, 0x4f

    .line 1979
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 1980
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX011:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1981
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1982
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1983
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1984
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1985
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1986
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1987
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x136

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1988
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1989
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1990
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x168

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1991
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1992
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1993
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x348

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1994
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1995
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1996
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x35c

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1997
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1998
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 1999
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2000
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2003
    const/16 v2, 0x50

    .line 2004
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2005
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2006
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2007
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2008
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2009
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2010
    const/16 v2, 0x51

    .line 2011
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2012
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2013
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2014
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2015
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2016
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2017
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x82

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2018
    const/16 v2, 0x52

    .line 2019
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2020
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2021
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2022
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2023
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2024
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2025
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2026
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x46

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2027
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2028
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xa0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2029
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x46

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2030
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2031
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2032
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x69

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2033
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2034
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x370

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2035
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x69

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2036
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2037
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x38e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2038
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x46

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2039
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2040
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2041
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x46

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2042
    const/16 v2, 0x53

    .line 2043
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2044
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2045
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2046
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2047
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2048
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2049
    const/16 v2, 0x54

    .line 2050
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2051
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2052
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2053
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2054
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2055
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2056
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x78

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2057
    const/16 v2, 0x55

    .line 2058
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2059
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2060
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2061
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2062
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2063
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2064
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x2a

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2065
    const/16 v2, 0x56

    .line 2066
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2067
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR12:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2068
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2069
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2070
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2071
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2072
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2076
    :goto_10
    const/16 v2, 0x57

    .line 2077
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2078
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY312:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2079
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2080
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2081
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2082
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2083
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2084
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2085
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xa0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2086
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2087
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2088
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xd2

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2089
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2090
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2091
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x370

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2092
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2093
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2094
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x38e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2095
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2096
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2097
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2098
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2101
    const/16 v2, 0x58

    .line 2102
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2103
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR13:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2104
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2105
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2106
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2107
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2108
    const/16 v2, 0x59

    .line 2109
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2110
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR13:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2111
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2112
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2113
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2114
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2115
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x82

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2116
    const/16 v2, 0x5a

    .line 2117
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2118
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR13:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2119
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2120
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2121
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2122
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2123
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2124
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0xe1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2125
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2126
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xdc

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2127
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xe1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2128
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2129
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x10e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2130
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xa5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2131
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2132
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x370

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2133
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0xa5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2134
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2135
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x38e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2136
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0xe1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2137
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2138
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2139
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0xe1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2140
    const/16 v2, 0x5b

    .line 2141
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2142
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR13:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2143
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2144
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2145
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2146
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2147
    const/16 v2, 0x5c

    .line 2148
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2149
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR13:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2150
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2151
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2152
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2153
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2154
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x78

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2155
    const/16 v2, 0x5d

    .line 2156
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2157
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR13:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2158
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2159
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2160
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2161
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2162
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x46

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2163
    const/16 v2, 0x5e

    .line 2164
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2165
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR13:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2166
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2167
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2168
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2169
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2170
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2174
    :goto_11
    const/16 v2, 0x5f

    .line 2175
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2176
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY013:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2177
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2178
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2179
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2180
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2181
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2182
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2183
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xdc

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2184
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2185
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2186
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x10e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2187
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2188
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2189
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x370

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2190
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2191
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2192
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x38e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2193
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2194
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2195
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2196
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2199
    const/16 v2, 0x60

    .line 2200
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2201
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR14:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2202
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2203
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2204
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2205
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2206
    const/16 v2, 0x61

    .line 2207
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2208
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR14:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2209
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2210
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2211
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2212
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2213
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x118

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2214
    const/16 v2, 0x62

    .line 2215
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2216
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR14:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2217
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2218
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2219
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2220
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2221
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2222
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x46

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2223
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2224
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xdc

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2225
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x46

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2226
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2227
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x10e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2228
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x69

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2229
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2230
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x348

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2231
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x69

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2232
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2233
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x366

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2234
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x46

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2235
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2236
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2237
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x46

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2238
    const/16 v2, 0x63

    .line 2239
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2240
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR14:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2241
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2242
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2243
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2244
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2245
    const/16 v2, 0x64

    .line 2246
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2247
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR14:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2248
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2249
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2250
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2251
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2252
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x87

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2253
    const/16 v2, 0x65

    .line 2254
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2255
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR14:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2256
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2257
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2258
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2259
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2260
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x2a

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2261
    const/16 v2, 0x66

    .line 2262
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2263
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR14:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2264
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2265
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2266
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2267
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2268
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2272
    :goto_12
    const/16 v2, 0x67

    .line 2273
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2274
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY314:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2275
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2276
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2277
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2278
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2279
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2280
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2281
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xdc

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2282
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2283
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2284
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x10e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2285
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2286
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2287
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x348

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2288
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2289
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2290
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x366

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2291
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2292
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2293
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2294
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2297
    const/16 v2, 0x68

    .line 2298
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2299
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR15:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2300
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2301
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2302
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2303
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2304
    const/16 v2, 0x69

    .line 2305
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2306
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR15:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2307
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2308
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2309
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2310
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2311
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x118

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2312
    const/16 v2, 0x6a

    .line 2313
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2314
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR15:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2315
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2316
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2317
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2318
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2319
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2320
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0xe1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2321
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2322
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2323
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xe1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2324
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2325
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x14a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2326
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xa5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2327
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2328
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x348

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2329
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0xa5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2330
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2331
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x366

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2332
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0xe1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2333
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2334
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2335
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0xe1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2336
    const/16 v2, 0x6b

    .line 2337
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2338
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR15:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2339
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2340
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2341
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2342
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2343
    const/16 v2, 0x6c

    .line 2344
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2345
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR15:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2346
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2347
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2348
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2349
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2350
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x87

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2351
    const/16 v2, 0x6d

    .line 2352
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2353
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR15:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2354
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2355
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2356
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2357
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2358
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x46

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2359
    const/16 v2, 0x6e

    .line 2360
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2361
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR15:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2362
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2363
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2364
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2365
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2366
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2370
    :goto_13
    const/16 v2, 0x6f

    .line 2371
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2372
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY015:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2373
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2374
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2375
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2376
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2377
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2378
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2379
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2380
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2381
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2382
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x14a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2383
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2384
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2385
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x348

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2386
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2387
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2388
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x366

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2389
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2390
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2391
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2392
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2395
    const/16 v2, 0x70

    .line 2396
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2397
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR16:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2398
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2399
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2400
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2401
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2402
    const/16 v2, 0x71

    .line 2403
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2404
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR16:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2405
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2406
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2407
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2408
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2409
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x1ae

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2410
    const/16 v2, 0x72

    .line 2411
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2412
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR16:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2413
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2414
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2415
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2416
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2417
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2418
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x46

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2419
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2420
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2421
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x46

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2422
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2423
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x14a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2424
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x69

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2425
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2426
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x32a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2427
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x69

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2428
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2429
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x33e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2430
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x46

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2431
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2432
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2433
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x46

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2434
    const/16 v2, 0x73

    .line 2435
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2436
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR16:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2437
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2438
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2439
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2440
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2441
    const/16 v2, 0x74

    .line 2442
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2443
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR16:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2444
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2445
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2446
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2447
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2448
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x78

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2449
    const/16 v2, 0x75

    .line 2450
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2451
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR16:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2452
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2453
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2454
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2455
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2456
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x2a

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2457
    const/16 v2, 0x76

    .line 2458
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2459
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR16:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2460
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2461
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2462
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2463
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2464
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2465
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2469
    :goto_14
    const/16 v2, 0x77

    .line 2470
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2471
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY316:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2472
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2473
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2474
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2475
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2476
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2477
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2478
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x118

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2479
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2480
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2481
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x14a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2482
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2483
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2484
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x32a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2485
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2486
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2487
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x33e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2488
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2489
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2490
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2491
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2494
    const/16 v2, 0x78

    .line 2495
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2496
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR17:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2497
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2498
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2499
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2500
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, -0x1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2501
    const/16 v2, 0x79

    .line 2502
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2503
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR17:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2504
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2505
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2506
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2507
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2508
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x1ae

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2509
    const/16 v2, 0x7a

    .line 2510
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2511
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR17:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2512
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2513
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2514
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2515
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2516
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2517
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0xe1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2518
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2519
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x15e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2520
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0xe1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2521
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2522
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x190

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2523
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0xa5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2524
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2525
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x32a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2526
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0xa5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2527
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2528
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x33e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2529
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0xe1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2530
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2531
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2532
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0xe1

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2533
    const/16 v2, 0x7b

    .line 2534
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2535
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR17:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2536
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2537
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2538
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2539
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0xa

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2540
    const/16 v2, 0x7c

    .line 2541
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2542
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR17:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2543
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2544
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2545
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2546
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2547
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x78

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2548
    const/16 v2, 0x7d

    .line 2549
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2550
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR17:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2551
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2552
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2553
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2554
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2555
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x46

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2556
    const/16 v2, 0x7e

    .line 2557
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2558
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR17:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2559
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2560
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2561
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2562
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 2563
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2567
    :goto_15
    const/16 v2, 0x7f

    .line 2568
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2569
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY017:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2570
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2571
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2572
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2573
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2574
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2575
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2576
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x15e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2577
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2578
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2579
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x190

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2580
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2581
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2582
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x32a

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2583
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2584
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2585
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x33e

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2586
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2587
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2588
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2589
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2591
    const/16 v2, 0x80

    .line 2592
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2593
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2594
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2595
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2596
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2597
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x8

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2599
    const/16 v2, 0x81

    .line 2600
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v2

    .line 2601
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2602
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2603
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2604
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2605
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v4, 0x0

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    move v2, v3

    .line 2609
    :goto_16
    add-int/lit8 v2, v2, 0x1

    .line 2610
    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v3, v6, v2

    .line 2611
    aget-object v3, v6, v2

    sget-object v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_GRAPHIC_OVERLAY_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 2612
    aget-object v3, v6, v2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v5, 0x0

    sub-long v8, p1, p3

    long-to-int v7, v8

    invoke-direct {v4, v5, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 2614
    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 2615
    sget-object v4, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_GraphicID:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v4

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 2616
    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 2617
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getWatermarkPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 2619
    sget-object v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

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

    .line 2621
    aget-object v4, v6, v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    const/4 v7, 0x0

    aput-object v3, v5, v7

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->resourceList:[Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    .line 2623
    aget-object v3, v6, v2

    const/16 v4, 0xa

    new-array v4, v4, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2626
    const/4 v3, 0x0

    .line 2627
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2628
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CoordX:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2629
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2630
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2631
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2632
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosX:I

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2633
    const/4 v3, 0x1

    .line 2634
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2635
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CoordY:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2636
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2637
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2638
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2639
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosY:I

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2640
    const/4 v3, 0x2

    .line 2641
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2642
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_ObjectWidth:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2643
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2644
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2645
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2646
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkWidth:I

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2647
    const/4 v3, 0x3

    .line 2648
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2649
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_ObjectHeight:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2650
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2651
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2652
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2653
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkHeight:I

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2654
    const/4 v3, 0x4

    .line 2655
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2656
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_GraphicID:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2657
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2658
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2659
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2660
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2661
    const/4 v3, 0x5

    .line 2662
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableWatermark()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 2663
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2664
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_Opacity:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2665
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2666
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2667
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2668
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2687
    :goto_17
    const/4 v3, 0x6

    .line 2688
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2689
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CanvasWidth:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2690
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2691
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2692
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2693
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x780

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2694
    const/4 v3, 0x7

    .line 2695
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2696
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CanvasHeight:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2697
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2698
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2699
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2700
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x438

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2701
    const/16 v3, 0x8

    .line 2702
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2703
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_TranslateZ:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2704
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2705
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2706
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2707
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0xa

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2709
    const/16 v3, 0x9

    .line 2710
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2711
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2712
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2713
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2714
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2715
    aget-object v2, v6, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2717
    return-object v6

    .line 1083
    :cond_f
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_1

    .line 1158
    :cond_10
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_2

    .line 1233
    :cond_11
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_3

    .line 1308
    :cond_12
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_4

    .line 1391
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

    .line 1398
    :cond_14
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_6

    .line 1479
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

    .line 1600
    :cond_16
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_8

    .line 1607
    :cond_17
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_9

    .line 1711
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

    .line 1718
    :cond_19
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_b

    .line 1790
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

    .line 1797
    :cond_1b
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_d

    .line 1878
    :cond_1c
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_e

    .line 1976
    :cond_1d
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_f

    .line 2074
    :cond_1e
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_10

    .line 2172
    :cond_1f
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_11

    .line 2270
    :cond_20
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_12

    .line 2368
    :cond_21
    aget-object v4, v6, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/16 v4, 0x64

    iput v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_13

    .line 2467
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

    .line 2565
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

    .line 2670
    :cond_24
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v5, v4, v3

    .line 2671
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_Opacity:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2672
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x4

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2673
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2674
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2675
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2676
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2677
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2678
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getSegValueForFadeIn()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2679
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2680
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2681
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getSegValueForFadeOut()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2682
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/16 v5, 0x64

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2683
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v4, v5

    .line 2684
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x3e8

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2685
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_17

    :cond_25
    move v2, v4

    goto/16 :goto_16

    :cond_26
    move v5, v4

    move v4, v3

    goto/16 :goto_0
.end method

.method public static makeResource(Landroid/content/Context;)V
    .locals 18

    .prologue
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 95
    invoke-static/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInternalAppCacheFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    sput-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    .line 96
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-wide v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->dataStartTime:D

    double-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v14, v2, v4

    .line 99
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Location ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/high16 v2, 0x42b40000    # 90.0f

    sput v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->d:F

    .line 103
    const-string v2, ""

    .line 104
    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_25

    .line 105
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

    .line 107
    :goto_0
    const-string v2, ""

    .line 108
    const-string v2, ""

    .line 109
    const-string v2, ""

    .line 110
    const-string v2, ""

    .line 111
    const-string v2, ""

    .line 112
    const-string v2, ""

    .line 114
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 115
    const/4 v2, -0x1

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    sget v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->d:F

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 117
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 119
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 122
    :try_start_0
    new-instance v3, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 124
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v4, "::makeResource:: geocoder.isPresent() false!!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    const/4 v4, 0x0

    .line 129
    const/4 v2, 0x0

    move v10, v2

    move-object v2, v4

    :goto_1
    const/16 v4, 0xa

    if-ge v10, v4, :cond_1

    .line 130
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

    .line 131
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 132
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

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

    .line 137
    :cond_1
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 138
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    .line 139
    invoke-virtual {v2}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v9

    .line 140
    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {v2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {v2}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v6

    .line 144
    invoke-virtual {v2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v7

    .line 145
    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    .line 146
    sget-object v8, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "::makeResource:: featureName: "

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v17, ", locality: "

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v17, ", subLocality: "

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ", subThoroughfare: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", adminArea: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subAdminArea: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", countryName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 151
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

    .line 171
    :cond_2
    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v11, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 172
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->c:I

    add-int/lit8 v4, v4, -0x32

    if-le v3, v4, :cond_6

    .line 173
    sget v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->d:F

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float/2addr v3, v4

    sput v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->d:F

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 174
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v11, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_3

    .line 129
    :cond_3
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto/16 :goto_1

    .line 152
    :cond_4
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 155
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

    .line 165
    :cond_5
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: addresses is NULL!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v9

    goto :goto_2

    .line 167
    :catch_0
    move-exception v2

    move-object v3, v2

    move-object v2, v9

    .line 168
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 177
    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 178
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 179
    sget v5, Lcom/muvee/mvdronecomposer/theme/cardwipe;->b:I

    sub-int/2addr v5, v3

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x41200000    # 10.0f

    add-float/2addr v5, v6

    .line 180
    const/high16 v6, 0x41a00000    # 20.0f

    .line 182
    sget v7, Lcom/muvee/mvdronecomposer/theme/cardwipe;->c:I

    sget v8, Lcom/muvee/mvdronecomposer/theme/cardwipe;->b:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 183
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 185
    sget-object v9, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "::makeResource:: bgLocationHeight: "

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v16, Lcom/muvee/mvdronecomposer/theme/cardwipe;->b:I

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v16, ", bgLocationWidth: "

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v16, Lcom/muvee/mvdronecomposer/theme/cardwipe;->c:I

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

    .line 189
    sget v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->b:I

    int-to-float v3, v3

    sub-float/2addr v3, v5

    invoke-virtual {v8, v2, v6, v3, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 192
    :try_start_2
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/styles/cardwipe/txt_location_"

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

    .line 194
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 195
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v7, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 197
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v6, "/styles/cardwipe/txt_location.png"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 199
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 200
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    if-eqz v7, :cond_7

    .line 205
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 209
    :cond_7
    :goto_4
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Location --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Date ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v2, "dd.MM.yyyy"

    invoke-static {v2, v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

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

    .line 216
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 217
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    sget v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->g:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 219
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 221
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 223
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 225
    sget v5, Lcom/muvee/mvdronecomposer/theme/cardwipe;->f:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->e:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 226
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 228
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 229
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 230
    sget v8, Lcom/muvee/mvdronecomposer/theme/cardwipe;->e:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 231
    sget v9, Lcom/muvee/mvdronecomposer/theme/cardwipe;->f:I

    sub-int/2addr v9, v4

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 233
    sget-object v10, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

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

    .line 235
    sget v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->e:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v9, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 238
    :try_start_3
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/cardwipe/txt_date_"

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

    .line 240
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 241
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 243
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v7, "/styles/cardwipe/txt_date.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 245
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 246
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 250
    if-eqz v5, :cond_8

    .line 251
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    :cond_8
    :goto_5
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Date --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: time ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v2, "hha"

    invoke-static {v2, v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

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

    .line 262
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 263
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    sget v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->j:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 265
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 266
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 267
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 269
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 271
    sget v5, Lcom/muvee/mvdronecomposer/theme/cardwipe;->i:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->h:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 272
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 274
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 275
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 276
    sget v8, Lcom/muvee/mvdronecomposer/theme/cardwipe;->h:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x40a00000    # 5.0f

    add-float/2addr v8, v9

    .line 277
    sget v9, Lcom/muvee/mvdronecomposer/theme/cardwipe;->i:I

    sub-int/2addr v9, v4

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 279
    sget-object v10, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

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

    .line 281
    sget v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->h:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v9, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 284
    :try_start_4
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/cardwipe/txt_time_"

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

    .line 286
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 287
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 289
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v7, "/styles/cardwipe/txt_time.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 291
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 292
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 296
    if-eqz v5, :cond_9

    .line 297
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 301
    :cond_9
    :goto_6
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: time --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max speed label ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v2, "MAX.SPEED"

    .line 306
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 307
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    sget v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->m:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 309
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 310
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 311
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 313
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 315
    sget v5, Lcom/muvee/mvdronecomposer/theme/cardwipe;->l:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->k:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 316
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 318
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 319
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 320
    sget v8, Lcom/muvee/mvdronecomposer/theme/cardwipe;->k:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 321
    sget v9, Lcom/muvee/mvdronecomposer/theme/cardwipe;->l:I

    sub-int/2addr v9, v4

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 323
    sget-object v10, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "::makeResource:: bgMaxSpeedLabelHeight: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v14, Lcom/muvee/mvdronecomposer/theme/cardwipe;->k:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ", bgMaxSpeedLabelWidth: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v14, Lcom/muvee/mvdronecomposer/theme/cardwipe;->l:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ", textMaxSpeedLabelHeight: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 326
    sget v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->k:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v9, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 329
    :try_start_5
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/cardwipe/txt_max_speed_label_"

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

    .line 331
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 332
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 334
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v7, "/styles/cardwipe/txt_max_speed_label.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 336
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 337
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 341
    if-eqz v5, :cond_a

    .line 342
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 346
    :cond_a
    :goto_7
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max speed label --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max speed value ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->maxSpeed:F

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/theme/cardwipe;->convertKphToMs(F)Ljava/lang/String;

    move-result-object v2

    .line 351
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 352
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    sget v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->p:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 354
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 355
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 357
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 359
    sget v5, Lcom/muvee/mvdronecomposer/theme/cardwipe;->o:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->n:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 360
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 362
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 363
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 364
    sget v8, Lcom/muvee/mvdronecomposer/theme/cardwipe;->n:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 365
    sget v9, Lcom/muvee/mvdronecomposer/theme/cardwipe;->o:I

    sub-int/2addr v9, v4

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 367
    sget-object v10, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "::makeResource:: bgMaxSpeedValueHeight: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v14, Lcom/muvee/mvdronecomposer/theme/cardwipe;->n:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ", bgMaxSpeedValueWidth: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v14, Lcom/muvee/mvdronecomposer/theme/cardwipe;->o:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ", textMaxSpeedValueHeight: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 370
    sget v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->n:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v9, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 373
    :try_start_6
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/cardwipe/txt_max_speed_value_"

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

    .line 375
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 376
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 378
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v7, "/styles/cardwipe/txt_max_speed_value.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 380
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 381
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 385
    if-eqz v5, :cond_b

    .line 386
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 390
    :cond_b
    :goto_8
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max speed value --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max altitude label ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v2, "MAX.ALTITUDE"

    .line 395
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 396
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    sget v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->s:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 398
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 399
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 400
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 402
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 404
    sget v5, Lcom/muvee/mvdronecomposer/theme/cardwipe;->r:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->q:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 405
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 407
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 408
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 409
    sget v8, Lcom/muvee/mvdronecomposer/theme/cardwipe;->q:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 410
    sget v9, Lcom/muvee/mvdronecomposer/theme/cardwipe;->r:I

    sub-int/2addr v9, v4

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 412
    sget-object v10, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "::makeResource:: bgMaxAltitudeLabelHeight: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v14, Lcom/muvee/mvdronecomposer/theme/cardwipe;->q:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ", bgMaxAltitudeLabelWidth: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v14, Lcom/muvee/mvdronecomposer/theme/cardwipe;->r:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ", textMaxAltitudeLabelHeight: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 415
    sget v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->q:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v9, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 418
    :try_start_7
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/cardwipe/txt_max_altitude_label_"

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

    .line 420
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 421
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 423
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v7, "/styles/cardwipe/txt_max_altitude_label.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 425
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 426
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 430
    if-eqz v5, :cond_c

    .line 431
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 435
    :cond_c
    :goto_9
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max altitude label --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max altitude value ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
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

    .line 440
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 441
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    sget v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->v:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 443
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 444
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 446
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 448
    sget v5, Lcom/muvee/mvdronecomposer/theme/cardwipe;->u:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->t:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 449
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 451
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 452
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 453
    sget v8, Lcom/muvee/mvdronecomposer/theme/cardwipe;->t:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 454
    sget v9, Lcom/muvee/mvdronecomposer/theme/cardwipe;->u:I

    sub-int/2addr v9, v4

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 456
    sget-object v10, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "::makeResource:: bgMaxAltitudeValueHeight: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v14, Lcom/muvee/mvdronecomposer/theme/cardwipe;->t:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ", bgMaxAltitudeValueWidth: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v14, Lcom/muvee/mvdronecomposer/theme/cardwipe;->u:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ", textMaxAltitudeValueHeight: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 459
    sget v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->t:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v9, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 462
    :try_start_8
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/cardwipe/txt_max_altitude_value_"

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

    .line 464
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 465
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 467
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v7, "/styles/cardwipe/txt_max_altitude_value.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 468
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 469
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 470
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 474
    if-eqz v5, :cond_d

    .line 475
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 479
    :cond_d
    :goto_a
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max altitude value --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Flight time label ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v2, "FLIGHT TIME"

    .line 485
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 486
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 487
    sget v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->y:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 488
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 489
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 490
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 491
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 493
    sget v5, Lcom/muvee/mvdronecomposer/theme/cardwipe;->x:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->w:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 494
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 496
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 497
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 498
    sget v8, Lcom/muvee/mvdronecomposer/theme/cardwipe;->w:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 499
    sget v9, Lcom/muvee/mvdronecomposer/theme/cardwipe;->x:I

    sub-int/2addr v9, v4

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 501
    sget-object v10, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "::makeResource:: bgFlightTimeLabelHeight: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v14, Lcom/muvee/mvdronecomposer/theme/cardwipe;->w:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ", bgFightTimeLabelWidth: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v14, Lcom/muvee/mvdronecomposer/theme/cardwipe;->x:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ", textFlightTimeLabelHeight: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", textFlightTimeLabelWidth: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", offsetFlightTimeLabelHeight: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", offsetFlightTimeLabelWidth: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->w:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v9, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 508
    :try_start_9
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/cardwipe/txt_flight_time_label_"

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

    .line 510
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 511
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 513
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v7, "/styles/cardwipe/txt_flight_time_label.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 515
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 516
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 520
    if-eqz v5, :cond_e

    .line 521
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 525
    :cond_e
    :goto_b
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Flight time label --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Flight time value ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-wide v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->dataDuration:D

    double-to-long v2, v2

    invoke-static {v2, v3}, Lcom/muvee/mvdronecomposer/theme/cardwipe;->convertSecondsToHMmSs(J)Ljava/lang/String;

    move-result-object v2

    .line 531
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 532
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 533
    sget v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->B:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 534
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 535
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 536
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 538
    sget v5, Lcom/muvee/mvdronecomposer/theme/cardwipe;->A:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->z:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 539
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 541
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 542
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 543
    sget v8, Lcom/muvee/mvdronecomposer/theme/cardwipe;->z:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 544
    sget v9, Lcom/muvee/mvdronecomposer/theme/cardwipe;->A:I

    sub-int v4, v9, v4

    int-to-float v4, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    .line 546
    sget-object v9, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "::makeResource:: bgFlightTimeValueHeight: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/muvee/mvdronecomposer/theme/cardwipe;->z:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", bgFlightTimeValueWidth: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/muvee/mvdronecomposer/theme/cardwipe;->A:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", textFlightTimeValueHeight: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", textFlightTimeValueHeight: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", offsetFlightTimeValueHeight: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", offsetFlightTimeValueWidth: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    sget v7, Lcom/muvee/mvdronecomposer/theme/cardwipe;->z:I

    int-to-float v7, v7

    sub-float/2addr v7, v8

    invoke-virtual {v6, v2, v4, v7, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 553
    :try_start_a
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/cardwipe/txt_flight_time_value_"

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

    .line 555
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 556
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 558
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v7, "/styles/cardwipe/txt_flight_time_value.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 559
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 560
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 561
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 565
    if-eqz v5, :cond_f

    .line 566
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 570
    :cond_f
    :goto_c
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Flight time value --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: map trace ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    sget v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->D:I

    sget v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->C:I

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/muvee/mvdronecomposer/theme/diagonal;->getBitmapFromURL(IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 576
    if-eqz v3, :cond_1b

    .line 578
    :try_start_b
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/cardwipe/img_map_trace_"

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

    .line 580
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 581
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v3, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 583
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v7, "/styles/cardwipe/img_map_trace.png"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 584
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 585
    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 586
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 590
    if-eqz v3, :cond_10

    .line 591
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 652
    :cond_10
    :goto_d
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: map trace --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

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

    .line 655
    return-void

    .line 201
    :catch_1
    move-exception v2

    .line 202
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 204
    if-eqz v7, :cond_7

    .line 205
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_4

    .line 204
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_11

    .line 205
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 206
    :cond_11
    throw v2

    .line 247
    :catch_2
    move-exception v2

    .line 248
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 250
    if-eqz v5, :cond_8

    .line 251
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_5

    .line 250
    :catchall_1
    move-exception v2

    if-eqz v5, :cond_12

    .line 251
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 252
    :cond_12
    throw v2

    .line 293
    :catch_3
    move-exception v2

    .line 294
    :try_start_e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 296
    if-eqz v5, :cond_9

    .line 297
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_6

    .line 296
    :catchall_2
    move-exception v2

    if-eqz v5, :cond_13

    .line 297
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 298
    :cond_13
    throw v2

    .line 338
    :catch_4
    move-exception v2

    .line 339
    :try_start_f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 341
    if-eqz v5, :cond_a

    .line 342
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_7

    .line 341
    :catchall_3
    move-exception v2

    if-eqz v5, :cond_14

    .line 342
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 343
    :cond_14
    throw v2

    .line 382
    :catch_5
    move-exception v2

    .line 383
    :try_start_10
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 385
    if-eqz v5, :cond_b

    .line 386
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_8

    .line 385
    :catchall_4
    move-exception v2

    if-eqz v5, :cond_15

    .line 386
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 387
    :cond_15
    throw v2

    .line 427
    :catch_6
    move-exception v2

    .line 428
    :try_start_11
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 430
    if-eqz v5, :cond_c

    .line 431
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_9

    .line 430
    :catchall_5
    move-exception v2

    if-eqz v5, :cond_16

    .line 431
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 432
    :cond_16
    throw v2

    .line 471
    :catch_7
    move-exception v2

    .line 472
    :try_start_12
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 474
    if-eqz v5, :cond_d

    .line 475
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_a

    .line 474
    :catchall_6
    move-exception v2

    if-eqz v5, :cond_17

    .line 475
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 476
    :cond_17
    throw v2

    .line 517
    :catch_8
    move-exception v2

    .line 518
    :try_start_13
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 520
    if-eqz v5, :cond_e

    .line 521
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_b

    .line 520
    :catchall_7
    move-exception v2

    if-eqz v5, :cond_18

    .line 521
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 522
    :cond_18
    throw v2

    .line 562
    :catch_9
    move-exception v2

    .line 563
    :try_start_14
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 565
    if-eqz v5, :cond_f

    .line 566
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_c

    .line 565
    :catchall_8
    move-exception v2

    if-eqz v5, :cond_19

    .line 566
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 567
    :cond_19
    throw v2

    .line 587
    :catch_a
    move-exception v2

    .line 588
    :try_start_15
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 590
    if-eqz v3, :cond_10

    .line 591
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_d

    .line 590
    :catchall_9
    move-exception v2

    if-eqz v3, :cond_1a

    .line 591
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 592
    :cond_1a
    throw v2

    .line 596
    :cond_1b
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v4, "/styles/diagonal/pin_a.png"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 597
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v5, "/styles/diagonal/pin_b.png"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 600
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 602
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 603
    const/4 v2, -0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 604
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 605
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 607
    sget v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->D:I

    sget v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->C:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 608
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 610
    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    .line 611
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::makeResource:: bgMapTraceWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/muvee/mvdronecomposer/theme/cardwipe;->D:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bgMapTraceHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/muvee/mvdronecomposer/theme/cardwipe;->C:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    sget v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->D:I

    sget v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->C:I

    invoke-static {v3, v4}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->setDrawblePointXY(II)V

    .line 613
    const/4 v3, 0x0

    move v8, v3

    :goto_e
    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    if-ge v8, v3, :cond_1c

    .line 614
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

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

    .line 616
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

    .line 613
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto/16 :goto_e

    .line 618
    :cond_1c
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

    .line 619
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

    .line 621
    invoke-static {v9}, Lcom/muvee/mvdronecomposer/theme/diagonal;->getCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v3, v2

    .line 626
    :goto_f
    :try_start_16
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/cardwipe/img_map_trace_"

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

    .line 628
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 629
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v3, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 631
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/cardwipe;->G:Ljava/io/File;

    const-string v7, "/styles/cardwipe/img_map_trace.png"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 632
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 633
    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 634
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 638
    if-eqz v3, :cond_1d

    .line 639
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 642
    :cond_1d
    if-eqz v10, :cond_1e

    .line 643
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 646
    :cond_1e
    if-eqz v11, :cond_10

    .line 647
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_d

    .line 623
    :cond_1f
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/cardwipe;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: location data wrong!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v9

    goto :goto_f

    .line 635
    :catch_b
    move-exception v2

    .line 636
    :try_start_17
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 638
    if-eqz v3, :cond_20

    .line 639
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 642
    :cond_20
    if-eqz v10, :cond_21

    .line 643
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 646
    :cond_21
    if-eqz v11, :cond_10

    .line 647
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_d

    .line 638
    :catchall_a
    move-exception v2

    if-eqz v3, :cond_22

    .line 639
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 642
    :cond_22
    if-eqz v10, :cond_23

    .line 643
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 646
    :cond_23
    if-eqz v11, :cond_24

    .line 647
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 648
    :cond_24
    throw v2

    :cond_25
    move-object v9, v2

    goto/16 :goto_0
.end method
