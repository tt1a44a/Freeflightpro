.class public Lcom/muvee/mvdronecomposer/theme/wipeout;
.super Ljava/lang/Object;
.source "wipeout.java"


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
    .locals 2

    .prologue
    const/16 v1, 0x190

    .line 50
    const-class v0, Lcom/muvee/mvdronecomposer/theme/wipeout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    .line 52
    const/16 v0, 0x87

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->b:I

    .line 53
    const/16 v0, 0x3e8

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->c:I

    .line 54
    const/high16 v0, 0x42b40000    # 90.0f

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->d:F

    .line 56
    const/16 v0, 0x4b

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->e:I

    .line 57
    const/16 v0, 0xfa

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->f:I

    .line 58
    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->g:F

    .line 60
    sget v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->e:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->h:I

    .line 61
    sget v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->f:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->i:I

    .line 62
    sget v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->g:F

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->j:F

    .line 64
    const/16 v0, 0x64

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->k:I

    .line 65
    const/16 v0, 0x15e

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->l:I

    .line 66
    const/high16 v0, 0x428c0000    # 70.0f

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->m:F

    .line 67
    const/16 v0, 0x96

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->n:I

    .line 68
    const/16 v0, 0x12c

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->o:I

    .line 69
    const/high16 v0, 0x42c80000    # 100.0f

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->p:F

    .line 71
    sget v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->k:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->q:I

    .line 72
    sget v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->l:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->r:I

    .line 73
    sget v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->m:F

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->s:F

    .line 74
    sget v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->n:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->t:I

    .line 75
    sget v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->o:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->u:I

    .line 76
    sget v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->p:F

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->v:F

    .line 78
    sget v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->k:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->w:I

    .line 79
    sget v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->l:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->x:I

    .line 80
    sget v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->m:F

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->y:F

    .line 81
    sget v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->k:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->z:I

    .line 82
    sget v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->l:I

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->A:I

    .line 83
    sget v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->m:F

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->B:F

    .line 85
    sput v1, Lcom/muvee/mvdronecomposer/theme/wipeout;->C:I

    .line 86
    sput v1, Lcom/muvee/mvdronecomposer/theme/wipeout;->D:I

    .line 88
    const/16 v0, 0x60

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->E:I

    .line 89
    const/16 v0, 0x37

    sput v0, Lcom/muvee/mvdronecomposer/theme/wipeout;->F:I

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

    .line 2292
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    const/high16 v1, 0x45610000    # 3600.0f

    div-float/2addr v0, v1

    .line 2293
    sget-object v1, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

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

    .line 2294
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

    .line 2285
    rem-long v0, p0, v2

    .line 2286
    div-long v0, p0, v2

    rem-long/2addr v0, v2

    .line 2287
    const-wide/16 v2, 0xe10

    div-long v2, p0, v2

    const-wide/16 v4, 0x18

    rem-long/2addr v2, v4

    .line 2288
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
    .locals 13

    .prologue
    .line 670
    const/4 v1, 0x1

    .line 672
    const/4 v0, 0x0

    .line 673
    sget-boolean v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_IN_EFFECT_WHEN_START:Z

    if-eqz v2, :cond_0

    .line 674
    const/4 v1, 0x2

    .line 675
    sget v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->VIDEO_FADE_IN_DURATION:I

    .line 678
    :cond_0
    const/4 v2, 0x0

    .line 679
    sget-boolean v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_OUT_EFFECT_WHEN_CLOSE:Z

    if-eqz v3, :cond_1b

    .line 680
    add-int/lit8 v2, v1, 0x1

    .line 681
    sget v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->VIDEO_FADE_OUT_DURATION:I

    move v4, v1

    .line 684
    :goto_0
    const/4 v1, 0x0

    .line 685
    sub-long v6, p1, p3

    int-to-long v8, v0

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1770

    cmp-long v3, v6, v8

    if-ltz v3, :cond_1a

    .line 686
    const/4 v1, 0x1

    .line 687
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    .line 689
    :goto_1
    const/4 v1, 0x0

    .line 690
    sub-long v6, p1, p3

    int-to-long v8, v0

    sub-long/2addr v6, v8

    int-to-long v8, v4

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x32c8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    .line 691
    const/4 v1, 0x1

    .line 692
    add-int/lit8 v2, v2, 0x1

    .line 695
    :cond_1
    sget-object v5, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "::getEffectDescriptions:: effectNum: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-array v5, v2, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    .line 699
    const/4 v2, -0x1

    .line 702
    sget-boolean v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_IN_EFFECT_WHEN_START:Z

    if-eqz v6, :cond_2

    .line 704
    const/4 v2, 0x0

    .line 707
    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v6, v5, v2

    .line 708
    aget-object v6, v5, v2

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 709
    aget-object v6, v5, v2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 711
    const/16 v6, 0xc

    .line 712
    aget-object v7, v5, v2

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v6, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 714
    const/4 v6, 0x0

    .line 715
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 716
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 717
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 718
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 719
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 720
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, -0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 721
    const/4 v6, 0x1

    .line 722
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 723
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_RGBColorR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 724
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 725
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 726
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 727
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 728
    const/4 v6, 0x2

    .line 729
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 730
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorIntensityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 731
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 732
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 733
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 734
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x64

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 735
    const/4 v6, 0x3

    .line 736
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 737
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorLayer:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 738
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 739
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 740
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 741
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x2

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 742
    const/4 v6, 0x4

    .line 743
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 744
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 745
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 746
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 747
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 748
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 749
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x1f4

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 750
    const/4 v6, 0x5

    .line 751
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 752
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 753
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 754
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 755
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 756
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 757
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x1f4

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 758
    const/4 v6, 0x6

    .line 759
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 760
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 761
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 762
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 763
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 764
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 765
    const/4 v6, 0x7

    .line 766
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 767
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 768
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 769
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 770
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 771
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 772
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x3e8

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 773
    const/16 v6, 0x8

    .line 774
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 775
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 776
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 777
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 778
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 779
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 780
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x3e8

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 781
    const/16 v6, 0x9

    .line 782
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 783
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 784
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x2

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 785
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 786
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 787
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 788
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/16 v8, 0x64

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 789
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x1

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 790
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/16 v8, 0x3e8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 791
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 792
    const/16 v6, 0xa

    .line 793
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 794
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 795
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 796
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 797
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 798
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x8

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 799
    const/16 v6, 0xb

    .line 800
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 801
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 802
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 803
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 804
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 805
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 808
    :cond_2
    sget-boolean v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_OUT_EFFECT_WHEN_CLOSE:Z

    if-eqz v6, :cond_3

    .line 810
    add-int/lit8 v2, v2, 0x1

    .line 813
    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v6, v5, v2

    .line 814
    aget-object v6, v5, v2

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 815
    aget-object v6, v5, v2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    sub-long v8, p1, p3

    int-to-long v10, v4

    sub-long/2addr v8, v10

    long-to-int v8, v8

    sub-long v10, p1, p3

    long-to-int v9, v10

    invoke-direct {v7, v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 817
    const/16 v6, 0xc

    .line 818
    aget-object v7, v5, v2

    new-array v6, v6, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v6, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 820
    const/4 v6, 0x0

    .line 821
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 822
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 823
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 824
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 825
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 826
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, -0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 827
    const/4 v6, 0x1

    .line 828
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 829
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_RGBColorR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 830
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 831
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 832
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 833
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 834
    const/4 v6, 0x2

    .line 835
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 836
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorIntensityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 837
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 838
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 839
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 840
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x64

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 841
    const/4 v6, 0x3

    .line 842
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 843
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ColorLayer:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 844
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 845
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 846
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 847
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x2

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 848
    const/4 v6, 0x4

    .line 849
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 850
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 851
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 852
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 853
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 854
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 855
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x1f4

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 856
    const/4 v6, 0x5

    .line 857
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 858
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 859
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 860
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 861
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 862
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 863
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x1f4

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 864
    const/4 v6, 0x6

    .line 865
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 866
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 867
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 868
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 869
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 870
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 871
    const/4 v6, 0x7

    .line 872
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 873
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 874
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 875
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 876
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 877
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 878
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x3e8

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 879
    const/16 v6, 0x8

    .line 880
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 881
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 882
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 883
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 884
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 885
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 886
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x3e8

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 887
    const/16 v6, 0x9

    .line 888
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 889
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 890
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x2

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 891
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 892
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 893
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 894
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 895
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x1

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 896
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/16 v8, 0x3e8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 897
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x64

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 898
    const/16 v6, 0xa

    .line 899
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 900
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 901
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 902
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 903
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 904
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x8

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 905
    const/16 v6, 0xb

    .line 906
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v8, v7, v6

    .line 907
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 908
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 909
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 910
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v8, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v9, v7, v8

    .line 911
    aget-object v7, v5, v2

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v7, v6

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 914
    :cond_3
    if-eqz v3, :cond_8

    .line 916
    add-int/lit8 v2, v2, 0x1

    .line 919
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "::getEffectDescriptions:: Location and date info++ effectNo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v3, v5, v2

    .line 922
    aget-object v3, v5, v2

    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 923
    aget-object v3, v5, v2

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    add-int/lit16 v7, v0, 0xc8

    add-int/lit16 v8, v0, 0x1450

    invoke-direct {v6, v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 925
    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 926
    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 927
    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 928
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v8, "/styles/wipeout/img_line.png"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 930
    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 931
    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 932
    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 933
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v9, "/styles/wipeout/txt_location.png"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 935
    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 936
    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 937
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 938
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v10, "/styles/wipeout/txt_date.png"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 940
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 941
    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 942
    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 943
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v11, "/styles/wipeout/txt_time.png"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 945
    aget-object v9, v5, v2

    const/4 v10, 0x4

    new-array v10, v10, [Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v3, 0x1

    aput-object v6, v10, v3

    const/4 v3, 0x2

    aput-object v7, v10, v3

    const/4 v3, 0x3

    aput-object v8, v10, v3

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->resourceList:[Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    .line 947
    const/16 v3, 0x21

    .line 948
    aget-object v6, v5, v2

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v3, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 951
    const/4 v3, 0x0

    .line 952
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 953
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 954
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 955
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 956
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 957
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/4 v6, -0x1

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 958
    const/4 v3, 0x1

    .line 959
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 960
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 961
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 962
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 963
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 964
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 965
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0x1f4

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 966
    const/4 v3, 0x2

    .line 967
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 968
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 969
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 970
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x6

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 971
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 972
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 973
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 974
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, -0x3

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 975
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 976
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x1e

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 977
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, -0x3

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 978
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 979
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/16 v7, 0x78

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 980
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/16 v7, 0x1f4

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 981
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 982
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/16 v7, 0x384

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 983
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/16 v7, 0x1f4

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 984
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 985
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/16 v7, 0x3ca

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 986
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/4 v7, -0x3

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 987
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x5

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 988
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    const/16 v7, 0x3e8

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 989
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x5

    aget-object v3, v3, v6

    const/4 v6, -0x3

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 990
    const/4 v3, 0x3

    .line 991
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 992
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 993
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 994
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 995
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 996
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0xa

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 997
    const/4 v3, 0x4

    .line 998
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 999
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1000
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1001
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1002
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1003
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1004
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0x3e8

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1005
    const/4 v3, 0x5

    .line 1006
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1007
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1008
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1009
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1010
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1011
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1012
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/4 v6, 0x4

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1013
    const/4 v3, 0x6

    .line 1014
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1015
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1016
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1017
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1018
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1019
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v6

    if-nez v6, :cond_4

    sget v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_b

    .line 1020
    :cond_4
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/4 v6, 0x0

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1026
    :goto_2
    const/4 v3, 0x7

    .line 1027
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1028
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1029
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1030
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1031
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1032
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/4 v6, -0x1

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1033
    const/16 v3, 0x8

    .line 1034
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1035
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1036
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1037
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1038
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1039
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1040
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0x168

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1041
    const/16 v3, 0x9

    .line 1042
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1043
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1044
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1045
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x6

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1046
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1047
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1048
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1049
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x1c0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1050
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1051
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x6e

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1052
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x1c0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1053
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1054
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/16 v7, 0xc8

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1055
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/16 v7, 0x233

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1056
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1057
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/16 v7, 0x334

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1058
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/16 v7, 0x233

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1059
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1060
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/16 v7, 0x38e

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1061
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/16 v7, 0x1c0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1062
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x5

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1063
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    const/16 v7, 0x3e8

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1064
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x5

    aget-object v3, v3, v6

    const/16 v6, 0x1c0

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1065
    const/16 v3, 0xa

    .line 1066
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1067
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1068
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1069
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1070
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1071
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0xa

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1072
    const/16 v3, 0xb

    .line 1073
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1074
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1075
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1076
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1077
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1078
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1079
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0x209

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1080
    const/16 v3, 0xc

    .line 1081
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1082
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1083
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1084
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1085
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1086
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1087
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0x7d

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1088
    const/16 v3, 0xd

    .line 1089
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1090
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1091
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1092
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1093
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1094
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v6

    if-nez v6, :cond_5

    sget v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_c

    .line 1095
    :cond_5
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/4 v6, 0x0

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1099
    :goto_3
    const/16 v3, 0xe

    .line 1100
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1101
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY32:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1102
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x6

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1103
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1104
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1105
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1106
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1107
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1108
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x6e

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1109
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1110
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1111
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/16 v7, 0xc8

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1112
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/16 v7, 0x64

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1113
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1114
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/16 v7, 0x334

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1115
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/16 v7, 0x64

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1116
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1117
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/16 v7, 0x38e

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1118
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1119
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x5

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1120
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    const/16 v7, 0x3e8

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1121
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x5

    aget-object v3, v3, v6

    const/4 v6, 0x0

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1124
    const/16 v3, 0xf

    .line 1125
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1126
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1127
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1128
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1129
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1130
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/4 v6, -0x1

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1131
    const/16 v3, 0x10

    .line 1132
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1133
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1134
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1135
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1136
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1137
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1138
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0xa5

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1139
    const/16 v3, 0x11

    .line 1140
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1141
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1142
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1143
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x6

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1144
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1145
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1146
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1147
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x211

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1148
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1149
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x96

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1150
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x211

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1151
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1152
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/16 v7, 0xf0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1153
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/16 v7, 0x1cc

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1154
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1155
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/16 v7, 0x30c

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1156
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/16 v7, 0x1cc

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1157
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1158
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/16 v7, 0x366

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1159
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/16 v7, 0x211

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1160
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x5

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1161
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    const/16 v7, 0x3e8

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1162
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x5

    aget-object v3, v3, v6

    const/16 v6, 0x211

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1163
    const/16 v3, 0x12

    .line 1164
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1165
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1166
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1167
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1168
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1169
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0xa

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1170
    const/16 v3, 0x13

    .line 1171
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1172
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1173
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1174
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1175
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1176
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1177
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0x82

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1178
    const/16 v3, 0x14

    .line 1179
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1180
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1181
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1182
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1183
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1184
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1185
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0x45

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1186
    const/16 v3, 0x15

    .line 1187
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1188
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1189
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1190
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1191
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1192
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v6

    if-nez v6, :cond_6

    sget v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_d

    .line 1193
    :cond_6
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/4 v6, 0x0

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1197
    :goto_4
    const/16 v3, 0x16

    .line 1198
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1199
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY03:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1200
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x6

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1201
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1202
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1203
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1204
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x64

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1205
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1206
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x96

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1207
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x64

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1208
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1209
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/16 v7, 0xf0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1210
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1211
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1212
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/16 v7, 0x30c

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1213
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1214
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1215
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/16 v7, 0x366

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1216
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/16 v7, 0x64

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1217
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x5

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1218
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    const/16 v7, 0x3e8

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1219
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x5

    aget-object v3, v3, v6

    const/16 v6, 0x64

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1222
    const/16 v3, 0x17

    .line 1223
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1224
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1225
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1226
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1227
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1228
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/4 v6, -0x1

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1229
    const/16 v3, 0x18

    .line 1230
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1231
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1232
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1233
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1234
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1235
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1236
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0x12c

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1237
    const/16 v3, 0x19

    .line 1238
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1239
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1240
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1241
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x6

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1242
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1243
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1244
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1245
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x211

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1246
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1247
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0xbe

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1248
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x211

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1249
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1250
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/16 v7, 0x118

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1251
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/16 v7, 0x1cc

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1252
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1253
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/16 v7, 0x2e4

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1254
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/16 v7, 0x1cc

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1255
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1256
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/16 v7, 0x33e

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1257
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/16 v7, 0x211

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1258
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x5

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1259
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    const/16 v7, 0x3e8

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1260
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x5

    aget-object v3, v3, v6

    const/16 v6, 0x211

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1261
    const/16 v3, 0x1a

    .line 1262
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1263
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1264
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1265
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1266
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1267
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0xa

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1268
    const/16 v3, 0x1b

    .line 1269
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1270
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1271
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1272
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1273
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1274
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1275
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0x82

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1276
    const/16 v3, 0x1c

    .line 1277
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1278
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1279
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1280
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1281
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1282
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1283
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0x45

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1284
    const/16 v3, 0x1d

    .line 1285
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1286
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1287
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1288
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1289
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1290
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v6

    if-nez v6, :cond_7

    sget v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_e

    .line 1291
    :cond_7
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/4 v6, 0x0

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1295
    :goto_5
    const/16 v3, 0x1e

    .line 1296
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1297
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosY04:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1298
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x6

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1299
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1300
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1301
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1302
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/16 v7, 0x64

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1303
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1304
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0xbe

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1305
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x64

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1306
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1307
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/16 v7, 0x118

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1308
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1309
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1310
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/16 v7, 0x2e4

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1311
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1312
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1313
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/16 v7, 0x33e

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1314
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    const/16 v7, 0x64

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1315
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x5

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1316
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    const/16 v7, 0x3e8

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1317
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x5

    aget-object v3, v3, v6

    const/16 v6, 0x64

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1319
    const/16 v3, 0x1f

    .line 1320
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1321
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1322
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1323
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1324
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1325
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0x8

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1327
    const/16 v3, 0x20

    .line 1328
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v6, v3

    .line 1329
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1330
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1331
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1332
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v8, v6, v7

    .line 1333
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/4 v6, 0x0

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1336
    :cond_8
    if-eqz v1, :cond_19

    .line 1338
    add-int/lit8 v1, v2, 0x1

    .line 1340
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::getEffectDescriptions:: Max speed, Max altitude and map trace++ effectNo: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v2, v5, v1

    .line 1343
    aget-object v2, v5, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_MULTILAYER_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 1344
    aget-object v2, v5, v1

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const-wide/16 v6, 0x1838

    sub-long v6, p1, v6

    sub-long v6, v6, p3

    int-to-long v8, v0

    sub-long/2addr v6, v8

    int-to-long v8, v4

    sub-long/2addr v6, v8

    long-to-int v6, v6

    const-wide/16 v8, 0xc8

    sub-long v8, p1, v8

    sub-long v8, v8, p3

    int-to-long v10, v0

    sub-long/2addr v8, v10

    int-to-long v10, v4

    sub-long/2addr v8, v10

    long-to-int v0, v8

    invoke-direct {v3, v6, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1347
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 1348
    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v2

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 1349
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1350
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v4, "/styles/wipeout/img_side_bar.png"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 1352
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 1353
    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 1354
    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1355
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v6, "/styles/wipeout/img_map_trace.png"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 1357
    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 1358
    sget-object v4, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v4

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 1359
    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1360
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v7, "/styles/wipeout/txt_flight_time_label.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 1362
    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 1363
    sget-object v6, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v6

    iput v6, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 1364
    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v6, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1365
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v8, "/styles/wipeout/txt_flight_time_value.png"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 1367
    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v6}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 1368
    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v7

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 1369
    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1370
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v9, "/styles/wipeout/txt_max_speed_label.png"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 1372
    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 1373
    sget-object v8, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v8

    iput v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 1374
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1375
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v10, "/styles/wipeout/txt_max_speed_value.png"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 1377
    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 1378
    sget-object v9, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v9

    iput v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 1379
    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1380
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v11, "/styles/wipeout/txt_max_altitude_label.png"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 1382
    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 1383
    sget-object v10, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_GraphicID8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v10

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 1384
    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 1385
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v12, "/styles/wipeout/txt_max_altitude_value.png"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 1387
    aget-object v10, v5, v1

    const/16 v11, 0x8

    new-array v11, v11, [Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v0, 0x1

    aput-object v2, v11, v0

    const/4 v0, 0x2

    aput-object v3, v11, v0

    const/4 v0, 0x3

    aput-object v4, v11, v0

    const/4 v0, 0x4

    aput-object v6, v11, v0

    const/4 v0, 0x5

    aput-object v7, v11, v0

    const/4 v0, 0x6

    aput-object v8, v11, v0

    const/4 v0, 0x7

    aput-object v9, v11, v0

    iput-object v11, v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->resourceList:[Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    .line 1390
    const/16 v0, 0x41

    .line 1391
    aget-object v2, v5, v1

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v0, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1394
    const/4 v0, 0x0

    .line 1395
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1396
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1397
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1398
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1399
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1400
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1401
    const/4 v0, 0x1

    .line 1402
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1403
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1404
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1405
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x5

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1406
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1407
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1408
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1409
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x474

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1410
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1411
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x14

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1412
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x474

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1413
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1414
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x5a

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1415
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x366

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1416
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1417
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3b6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1418
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x366

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1419
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1420
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1421
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x474

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1422
    const/4 v0, 0x2

    .line 1423
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1424
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1425
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1426
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1427
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1428
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1429
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x1f4

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1430
    const/4 v0, 0x3

    .line 1431
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1432
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1433
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1434
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1435
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1436
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1437
    const/4 v0, 0x4

    .line 1438
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1439
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1440
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1441
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1442
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1443
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1444
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xdb

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1445
    const/4 v0, 0x5

    .line 1446
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1447
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1448
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1449
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1450
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1451
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1452
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x3e8

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1453
    const/4 v0, 0x6

    .line 1454
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1455
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR1:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1456
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1457
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1458
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1459
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v2

    if-nez v2, :cond_9

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    .line 1460
    :cond_9
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1466
    :goto_6
    const/4 v0, 0x7

    .line 1467
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1468
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1469
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1470
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1471
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1472
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1473
    const/16 v0, 0x8

    .line 1474
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1475
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1476
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1477
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1478
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1479
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1480
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1481
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x294

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1482
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1483
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x50

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1484
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x294

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1485
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1486
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xa0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1487
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x365

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1488
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1489
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x384

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1490
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x365

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1491
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1492
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x3b6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1493
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x294

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1494
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1495
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1496
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x294

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1497
    const/16 v0, 0x9

    .line 1498
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1499
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1500
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1501
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1502
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1503
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1504
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x1f4

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1505
    const/16 v0, 0xa

    .line 1506
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1507
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1508
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1509
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1510
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1511
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1512
    const/16 v0, 0xb

    .line 1513
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1514
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1515
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1516
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1517
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1518
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1519
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xd0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1520
    const/16 v0, 0xc

    .line 1521
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1522
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1523
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1524
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1525
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1526
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1527
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x172

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1528
    const/16 v0, 0xd

    .line 1529
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1530
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR2:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1531
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1532
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1533
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1534
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v2

    if-nez v2, :cond_a

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    .line 1535
    :cond_a
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1539
    :goto_7
    const/16 v0, 0xe

    .line 1540
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1541
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX02:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1542
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1543
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1544
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1545
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1546
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1547
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1548
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x50

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1549
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1550
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1551
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xa0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1552
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1553
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1554
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x384

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1555
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1556
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1557
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x3b6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1558
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1559
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1560
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1561
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1564
    const/16 v0, 0xf

    .line 1565
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1566
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1567
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1568
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1569
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1570
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1571
    const/16 v0, 0x10

    .line 1572
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1573
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1574
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1575
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1576
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1577
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1578
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1579
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x34d

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1580
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1581
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x50

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1582
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x34d

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1583
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1584
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x96

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1585
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x297

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1586
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1587
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x384

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1588
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x297

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1589
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1590
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x3b6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1591
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x34d

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1592
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1593
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1594
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x34d

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1595
    const/16 v0, 0x11

    .line 1596
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1597
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1598
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1599
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1600
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1601
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1602
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x96

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1603
    const/16 v0, 0x12

    .line 1604
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1605
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1606
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1607
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1608
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1609
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1610
    const/16 v0, 0x13

    .line 1611
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1612
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1613
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1614
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1615
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1616
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1617
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xb6

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1618
    const/16 v0, 0x14

    .line 1619
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1620
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1621
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1622
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1623
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1624
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1625
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x5d

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1626
    const/16 v0, 0x15

    .line 1627
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1628
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1629
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1630
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1631
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1632
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1633
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1637
    :goto_8
    const/16 v0, 0x16

    .line 1638
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1639
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX33:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1640
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1641
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1642
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1643
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1644
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1645
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1646
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x50

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1647
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1648
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1649
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x96

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1650
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1651
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1652
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x384

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1653
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1654
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1655
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x3b6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1656
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1657
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1658
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1659
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1662
    const/16 v0, 0x17

    .line 1663
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1664
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1665
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1666
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1667
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1668
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1669
    const/16 v0, 0x18

    .line 1670
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1671
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1672
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1673
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1674
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1675
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1676
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1677
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x2b9

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1678
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1679
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x6e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1680
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x2b9

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1681
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1682
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xb4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1683
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x355

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1684
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1685
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x370

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1686
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x355

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1687
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1688
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x3a2

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1689
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x2b9

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1690
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1691
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1692
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x2b9

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1693
    const/16 v0, 0x19

    .line 1694
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1695
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1696
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1697
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1698
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1699
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1700
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x96

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1701
    const/16 v0, 0x1a

    .line 1702
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1703
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1704
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1705
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1706
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1707
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1708
    const/16 v0, 0x1b

    .line 1709
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1710
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1711
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1712
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1713
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1714
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1715
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x9c

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1716
    const/16 v0, 0x1c

    .line 1717
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1718
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1719
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1720
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1721
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1722
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1723
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x5d

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1724
    const/16 v0, 0x1d

    .line 1725
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1726
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR4:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1727
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1728
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1729
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1730
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1731
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1735
    :goto_9
    const/16 v0, 0x1e

    .line 1736
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1737
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX04:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1738
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1739
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1740
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1741
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1742
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1743
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1744
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x6e

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1745
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1746
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1747
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xb4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1748
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1749
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1750
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x370

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1751
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1752
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1753
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x3a2

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1754
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1755
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1756
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1757
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1760
    const/16 v0, 0x1f

    .line 1761
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1762
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1763
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1764
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1765
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1766
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1767
    const/16 v0, 0x20

    .line 1768
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1769
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1770
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1771
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1772
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1773
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1774
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1775
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x34d

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1776
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1777
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x96

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1778
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x34d

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1779
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1780
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xdc

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1781
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x297

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1782
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1783
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x1c7

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1784
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x297

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1785
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1786
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x212

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1787
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x34d

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1788
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1789
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1790
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x34d

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1791
    const/16 v0, 0x21

    .line 1792
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1793
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1794
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1795
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1796
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1797
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1798
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xf7

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1799
    const/16 v0, 0x22

    .line 1800
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1801
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1802
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1803
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1804
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1805
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1806
    const/16 v0, 0x23

    .line 1807
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1808
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1809
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1810
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1811
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1812
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1813
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xb6

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1814
    const/16 v0, 0x24

    .line 1815
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1816
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1817
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1818
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1819
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1820
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1821
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x5d

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1822
    const/16 v0, 0x25

    .line 1823
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1824
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR5:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1825
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1826
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1827
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1828
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1829
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1833
    :goto_a
    const/16 v0, 0x26

    .line 1834
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1835
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX35:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1836
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1837
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1838
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1839
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1840
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1841
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1842
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x96

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1843
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1844
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1845
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xdc

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1846
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1847
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1848
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x1c7

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1849
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1850
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1851
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x212

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1852
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1853
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1854
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1855
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1858
    const/16 v0, 0x27

    .line 1859
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1860
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1861
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1862
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1863
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1864
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1865
    const/16 v0, 0x28

    .line 1866
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1867
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1868
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1869
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1870
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1871
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1872
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1873
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x2b6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1874
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1875
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xbe

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1876
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x2b6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1877
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1878
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x104

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1879
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x352

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1880
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1881
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x1c7

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1882
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x352

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1883
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1884
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x212

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1885
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x2b6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1886
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1887
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1888
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x2b6

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1889
    const/16 v0, 0x29

    .line 1890
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1891
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1892
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1893
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1894
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1895
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1896
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xf7

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1897
    const/16 v0, 0x2a

    .line 1898
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1899
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1900
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1901
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1902
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1903
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1904
    const/16 v0, 0x2b

    .line 1905
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1906
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1907
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1908
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1909
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1910
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1911
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x9c

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1912
    const/16 v0, 0x2c

    .line 1913
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1914
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1915
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1916
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1917
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1918
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1919
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x8b

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1920
    const/16 v0, 0x2d

    .line 1921
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1922
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR6:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1923
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1924
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1925
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1926
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1927
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1931
    :goto_b
    const/16 v0, 0x2e

    .line 1932
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1933
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX06:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1934
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1935
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1936
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1937
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1938
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1939
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1940
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0xbe

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1941
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1942
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1943
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x104

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1944
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1945
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1946
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x1c7

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1947
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1948
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1949
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x212

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1950
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1951
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1952
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1953
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1956
    const/16 v0, 0x2f

    .line 1957
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1958
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1959
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1960
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1961
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1962
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1963
    const/16 v0, 0x30

    .line 1964
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1965
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1966
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1967
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1968
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1969
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1970
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1971
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x34d

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1972
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1973
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x212

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1974
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x34d

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1975
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1976
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x258

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1977
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x297

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1978
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1979
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x352

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1980
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x297

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1981
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1982
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x384

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1983
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x34d

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1984
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1985
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 1986
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x34d

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1987
    const/16 v0, 0x31

    .line 1988
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1989
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1990
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 1991
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1992
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 1993
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 1994
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xf7

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 1995
    const/16 v0, 0x32

    .line 1996
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 1997
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 1998
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 1999
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2000
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2001
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2002
    const/16 v0, 0x33

    .line 2003
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 2004
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2005
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2006
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2007
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2008
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2009
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xb6

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2010
    const/16 v0, 0x34

    .line 2011
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 2012
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2013
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2014
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2015
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2016
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2017
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x5d

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2018
    const/16 v0, 0x35

    .line 2019
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 2020
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR7:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2021
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2022
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2023
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2024
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2025
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2029
    :goto_c
    const/16 v0, 0x36

    .line 2030
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 2031
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX37:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2032
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2033
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2034
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2035
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2036
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2037
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2038
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x212

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2039
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2040
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2041
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x258

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2042
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2043
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2044
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x352

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2045
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2046
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2047
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x384

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2048
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2049
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2050
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2051
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2054
    const/16 v0, 0x37

    .line 2055
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 2056
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_InputR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2057
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2058
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2059
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2060
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2061
    const/16 v0, 0x38

    .line 2062
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 2063
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionXR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2064
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2065
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2066
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2067
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2068
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2069
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x2b6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2070
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2071
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x212

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2072
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x2b6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2073
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2074
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x258

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2075
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x352

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2076
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2077
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x334

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2078
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x352

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2079
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2080
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x366

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2081
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x2b6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2082
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2083
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2084
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x2b6

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2085
    const/16 v0, 0x39

    .line 2086
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 2087
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionYR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2088
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2089
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2090
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2091
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2092
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xf7

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2093
    const/16 v0, 0x3a

    .line 2094
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 2095
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_PositionZR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2096
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2097
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2098
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2099
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0xa

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2100
    const/16 v0, 0x3b

    .line 2101
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 2102
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleXR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2103
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2104
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2105
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2106
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2107
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x9c

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2108
    const/16 v0, 0x3c

    .line 2109
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 2110
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_ScaleYR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2111
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2112
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2113
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2114
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2115
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x8b

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2116
    const/16 v0, 0x3d

    .line 2117
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 2118
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_OpacityR8:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2119
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2120
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2121
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2122
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2123
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2127
    :goto_d
    const/16 v0, 0x3e

    .line 2128
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 2129
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_TexPosX08:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2130
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2131
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2132
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2133
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2134
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2135
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2136
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x212

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2137
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2138
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2139
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x258

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2140
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2141
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2142
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x334

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2143
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2144
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2145
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x366

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2146
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2147
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2148
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2149
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2151
    const/16 v0, 0x3f

    .line 2152
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 2153
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_EffectType:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2154
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2155
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2156
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2157
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x8

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2159
    const/16 v0, 0x40

    .line 2160
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v0

    .line 2161
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->EMultiLayer_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_MultiLayerParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2162
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2163
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2164
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2165
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    move v0, v1

    .line 2169
    :goto_e
    add-int/lit8 v0, v0, 0x1

    .line 2170
    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v1, v5, v0

    .line 2171
    aget-object v1, v5, v0

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_GRAPHIC_OVERLAY_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 2172
    aget-object v1, v5, v0

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v3, 0x0

    sub-long v6, p1, p3

    long-to-int v4, v6

    invoke-direct {v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 2174
    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 2175
    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_GraphicID:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 2176
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 2177
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getWatermarkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 2179
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::getEffectDescriptions:: resourcePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    aget-object v2, v5, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->resourceList:[Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    .line 2183
    aget-object v1, v5, v0

    const/16 v2, 0xa

    new-array v2, v2, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2186
    const/4 v1, 0x0

    .line 2187
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2188
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CoordX:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2189
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2190
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2191
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2192
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->droneType:Ljava/lang/String;

    const-string v3, "Bebop 2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2193
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosX:I

    add-int/lit8 v2, v2, -0x1c

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2197
    :goto_f
    const/4 v1, 0x1

    .line 2198
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2199
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CoordY:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2200
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2201
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2202
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2203
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosY:I

    add-int/lit8 v2, v2, 0x14

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2204
    const/4 v1, 0x2

    .line 2205
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2206
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_ObjectWidth:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2207
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2208
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2209
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2210
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkWidth:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2211
    const/4 v1, 0x3

    .line 2212
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2213
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_ObjectHeight:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2214
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2215
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2216
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2217
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkHeight:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2218
    const/4 v1, 0x4

    .line 2219
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2220
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_GraphicID:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2221
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2222
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2223
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2224
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2225
    const/4 v1, 0x5

    .line 2226
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableWatermark()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2227
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2228
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_Opacity:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2229
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2230
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2231
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2232
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2251
    :goto_10
    const/4 v1, 0x6

    .line 2252
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2253
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CanvasWidth:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2254
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2255
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2256
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2257
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0x780

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2258
    const/4 v1, 0x7

    .line 2259
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2260
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CanvasHeight:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2261
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2262
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2263
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2264
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0x438

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2265
    const/16 v1, 0x8

    .line 2266
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2267
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_TranslateZ:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2268
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2269
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2270
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2271
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0x1e

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2273
    const/16 v1, 0x9

    .line 2274
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2275
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_KeepAspectRatio:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2276
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2277
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2278
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2279
    aget-object v0, v5, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2281
    return-object v5

    .line 1022
    :cond_b
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0x64

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_2

    .line 1097
    :cond_c
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0x64

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_3

    .line 1195
    :cond_d
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0x64

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_4

    .line 1293
    :cond_e
    aget-object v6, v5, v2

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v6, v3

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/16 v6, 0x64

    iput v6, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_5

    .line 1462
    :cond_f
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_6

    .line 1537
    :cond_10
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x3c

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_7

    .line 1635
    :cond_11
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_8

    .line 1733
    :cond_12
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_9

    .line 1831
    :cond_13
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_a

    .line 1929
    :cond_14
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_b

    .line 2027
    :cond_15
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_c

    .line 2125
    :cond_16
    aget-object v2, v5, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/16 v2, 0x64

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_d

    .line 2195
    :cond_17
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosX:I

    add-int/lit8 v2, v2, -0x1a

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_f

    .line 2234
    :cond_18
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v2, v1

    .line 2235
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_Opacity:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2236
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2237
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2238
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2239
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2240
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2241
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2242
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getSegValueForFadeIn()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2243
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2244
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2245
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getSegValueForFadeOut()I

    move-result v3

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2246
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0x64

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2247
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v4, v2, v3

    .line 2248
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/16 v3, 0x3e8

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 2249
    aget-object v2, v5, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    goto/16 :goto_10

    :cond_19
    move v0, v2

    goto/16 :goto_e

    :cond_1a
    move v3, v1

    goto/16 :goto_1

    :cond_1b
    move v4, v2

    move v2, v1

    goto/16 :goto_0
.end method

.method public static makeResource(Landroid/content/Context;)V
    .locals 19

    .prologue
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 96
    invoke-static/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInternalAppCacheFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    sput-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    .line 97
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-wide v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->dataStartTime:D

    double-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v14, v2, v4

    .line 99
    const/4 v2, 0x0

    .line 100
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v5, "/styles/wipeout/pathwaygothicone_regular.ttf"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 102
    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v9, v2

    .line 106
    :goto_0
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Location ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/high16 v2, 0x42b40000    # 90.0f

    sput v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->d:F

    .line 110
    const-string v2, ""

    .line 111
    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_25

    .line 112
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

    move-object v10, v2

    .line 114
    :goto_1
    const-string v2, ""

    .line 115
    const-string v2, ""

    .line 116
    const-string v2, ""

    .line 117
    const-string v2, ""

    .line 118
    const-string v2, ""

    .line 119
    const-string v2, ""

    .line 121
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 122
    const/4 v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    sget v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->d:F

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 124
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 126
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 129
    :try_start_0
    new-instance v3, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 131
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v4, "::makeResource:: geocoder.isPresent() false!!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    const/4 v4, 0x0

    .line 136
    const/4 v2, 0x0

    move v11, v2

    move-object v2, v4

    :goto_2
    const/16 v4, 0xa

    if-ge v11, v4, :cond_1

    .line 137
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

    .line 138
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 139
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::makeResource:: tried "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v11, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times for getting location"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 145
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    .line 146
    invoke-virtual {v2}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v10

    .line 147
    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-virtual {v2}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v6

    .line 151
    invoke-virtual {v2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v7

    .line 152
    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    .line 153
    sget-object v8, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "::makeResource:: featureName: "

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v18, ", locality: "

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v18, ", subLocality: "

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ", subThoroughfare: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 157
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 158
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

    .line 178
    :cond_2
    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 179
    :goto_4
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->c:I

    if-le v3, v4, :cond_6

    .line 180
    sget v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->d:F

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float/2addr v3, v4

    sput v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->d:F

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 181
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_4

    .line 136
    :cond_3
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto/16 :goto_2

    .line 159
    :cond_4
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v5, ","

    invoke-virtual {v10, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

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

    goto :goto_3

    .line 172
    :cond_5
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: addresses is NULL!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v10

    goto :goto_3

    .line 174
    :catch_0
    move-exception v2

    move-object v3, v2

    move-object v2, v10

    .line 175
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 184
    :cond_6
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 185
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 186
    sget v5, Lcom/muvee/mvdronecomposer/theme/wipeout;->b:I

    sub-int/2addr v5, v3

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x41200000    # 10.0f

    add-float/2addr v5, v6

    .line 187
    const/high16 v6, 0x41a00000    # 20.0f

    .line 189
    sget v7, Lcom/muvee/mvdronecomposer/theme/wipeout;->c:I

    sget v8, Lcom/muvee/mvdronecomposer/theme/wipeout;->b:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 190
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 192
    sget-object v10, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "::makeResource:: bgLocationHeight: "

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v17, Lcom/muvee/mvdronecomposer/theme/wipeout;->b:I

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v17, ", bgLocationWidth: "

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v17, Lcom/muvee/mvdronecomposer/theme/wipeout;->c:I

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v17, ", textFeatureNameHeight: "

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ", textFeatureNameWidth: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->b:I

    int-to-float v3, v3

    sub-float/2addr v3, v5

    move-object/from16 v0, v16

    invoke-virtual {v8, v2, v6, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 199
    :try_start_2
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/styles/wipeout/txt_location_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 202
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v7, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 204
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v6, "/styles/wipeout/txt_location.png"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 206
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 207
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    if-eqz v7, :cond_7

    .line 212
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    :cond_7
    :goto_5
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Location --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Date ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v2, "dd.MM.yyyy"

    invoke-static {v2, v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

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

    .line 223
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 224
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->g:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 226
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 227
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 228
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 230
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 232
    sget v5, Lcom/muvee/mvdronecomposer/theme/wipeout;->f:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->e:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 233
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 235
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 236
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 237
    sget v8, Lcom/muvee/mvdronecomposer/theme/wipeout;->e:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    .line 238
    const/high16 v10, 0x41a00000    # 20.0f

    .line 240
    sget-object v11, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "::makeResource:: textDateHeight: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, ", textDateWidth: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->e:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v10, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 245
    :try_start_3
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/wipeout/txt_date_"

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

    .line 247
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 248
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 250
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v7, "/styles/wipeout/txt_date.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 252
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 253
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 257
    if-eqz v5, :cond_8

    .line 258
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 262
    :cond_8
    :goto_6
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Date --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: time ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v2, "hha"

    invoke-static {v2, v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

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

    .line 269
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 270
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->j:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 272
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 273
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 274
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 276
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 278
    sget v5, Lcom/muvee/mvdronecomposer/theme/wipeout;->i:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->h:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 279
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 281
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 282
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 283
    sget v8, Lcom/muvee/mvdronecomposer/theme/wipeout;->h:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    const/high16 v10, 0x40a00000    # 5.0f

    add-float/2addr v8, v10

    .line 284
    const/high16 v10, 0x41a00000    # 20.0f

    .line 286
    sget-object v11, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "::makeResource:: textTimeHeight: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, ", textTimeWidth: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->h:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v10, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 291
    :try_start_4
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/wipeout/txt_time_"

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

    .line 293
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 294
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 296
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v7, "/styles/wipeout/txt_time.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 298
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 299
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 303
    if-eqz v5, :cond_9

    .line 304
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 308
    :cond_9
    :goto_7
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: time --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max speed label ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v2, "MAX SPEED"

    .line 313
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 314
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->m:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 316
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 317
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 318
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 320
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 322
    sget v5, Lcom/muvee/mvdronecomposer/theme/wipeout;->l:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->k:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 323
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 325
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 326
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 327
    sget v8, Lcom/muvee/mvdronecomposer/theme/wipeout;->k:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    .line 328
    sget v10, Lcom/muvee/mvdronecomposer/theme/wipeout;->l:I

    sub-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x14

    int-to-float v10, v10

    .line 330
    sget-object v11, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "::makeResource:: bgMaxSpeedLabelHeight: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/muvee/mvdronecomposer/theme/wipeout;->k:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", bgMaxSpeedLabelWidth: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/muvee/mvdronecomposer/theme/wipeout;->l:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", textMaxSpeedLabelHeight: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, ", textMaxSpeedLabelWidth: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->k:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v10, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 336
    :try_start_5
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/wipeout/txt_max_speed_label_"

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

    .line 338
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 339
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 341
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v7, "/styles/wipeout/txt_max_speed_label.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 343
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 344
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 348
    if-eqz v5, :cond_a

    .line 349
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 353
    :cond_a
    :goto_8
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max speed label --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max speed value ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->maxSpeed:F

    invoke-static {v2}, Lcom/muvee/mvdronecomposer/theme/wipeout;->convertKphToMs(F)Ljava/lang/String;

    move-result-object v2

    .line 358
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 359
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->p:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 361
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 362
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 363
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 365
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 367
    sget v5, Lcom/muvee/mvdronecomposer/theme/wipeout;->o:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->n:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 368
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 370
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 371
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 372
    sget v8, Lcom/muvee/mvdronecomposer/theme/wipeout;->n:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    .line 373
    const/high16 v10, 0x41a00000    # 20.0f

    .line 375
    sget-object v11, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "::makeResource:: bgMaxSpeedValueHeight: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/muvee/mvdronecomposer/theme/wipeout;->n:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", bgMaxSpeedValueWidth: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/muvee/mvdronecomposer/theme/wipeout;->o:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", textMaxSpeedValueHeight: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, ", textMaxSpeedValueWidth: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->n:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v10, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 381
    :try_start_6
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/wipeout/txt_max_speed_value_"

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

    .line 383
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 384
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 386
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v7, "/styles/wipeout/txt_max_speed_value.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 388
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 389
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 393
    if-eqz v5, :cond_b

    .line 394
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 398
    :cond_b
    :goto_9
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max speed value --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max altitude label ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v2, "MAX ALTITUDE"

    .line 403
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 404
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->s:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 406
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 407
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 408
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 410
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 412
    sget v5, Lcom/muvee/mvdronecomposer/theme/wipeout;->r:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->q:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 413
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 415
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 416
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 417
    sget v8, Lcom/muvee/mvdronecomposer/theme/wipeout;->q:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    .line 418
    sget v10, Lcom/muvee/mvdronecomposer/theme/wipeout;->r:I

    sub-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x14

    int-to-float v10, v10

    .line 420
    sget-object v11, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "::makeResource:: bgMaxAltitudeLabelHeight: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/muvee/mvdronecomposer/theme/wipeout;->q:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", bgMaxAltitudeLabelWidth: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/muvee/mvdronecomposer/theme/wipeout;->r:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", textMaxAltitudeLabelHeight: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, ", textMaxAltitudeLabelWidth: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->q:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v10, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 426
    :try_start_7
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/wipeout/txt_max_altitude_label_"

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

    .line 428
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 429
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 431
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v7, "/styles/wipeout/txt_max_altitude_label.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 433
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 434
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 438
    if-eqz v5, :cond_c

    .line 439
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 443
    :cond_c
    :goto_a
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max altitude label --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max altitude value ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
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

    .line 448
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 449
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 450
    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->v:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 451
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 452
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 453
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 455
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 457
    sget v5, Lcom/muvee/mvdronecomposer/theme/wipeout;->u:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->t:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 458
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 460
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 461
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 462
    sget v8, Lcom/muvee/mvdronecomposer/theme/wipeout;->t:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    .line 463
    const/high16 v10, 0x41a00000    # 20.0f

    .line 465
    sget-object v11, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "::makeResource:: bgMaxAltitudeValueHeight: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/muvee/mvdronecomposer/theme/wipeout;->t:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", bgMaxAltitudeValueWidth: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/muvee/mvdronecomposer/theme/wipeout;->u:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", textMaxAltitudeValueHeight: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, ", textMaxAltitudeValueWidth: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->t:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v10, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 471
    :try_start_8
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/wipeout/txt_max_altitude_value_"

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

    .line 473
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 474
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 476
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v7, "/styles/wipeout/txt_max_altitude_value.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 477
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 478
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 479
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 483
    if-eqz v5, :cond_d

    .line 484
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 488
    :cond_d
    :goto_b
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: max altitude value --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Flight time label ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string v2, "FLIGHT TIME"

    .line 494
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 495
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 496
    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->y:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 497
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 498
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 499
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 500
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 502
    sget v5, Lcom/muvee/mvdronecomposer/theme/wipeout;->x:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->w:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 503
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 505
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 506
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 507
    sget v8, Lcom/muvee/mvdronecomposer/theme/wipeout;->w:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    .line 508
    sget v10, Lcom/muvee/mvdronecomposer/theme/wipeout;->x:I

    sub-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x14

    int-to-float v10, v10

    .line 510
    sget-object v11, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "::makeResource:: bgFlightTimeLabelHeight: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/muvee/mvdronecomposer/theme/wipeout;->w:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", bgFightTimeLabelWidth: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/muvee/mvdronecomposer/theme/wipeout;->x:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", textFlightTimeLabelHeight: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, ", textFlightTimeLabelWidth: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->w:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v10, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 517
    :try_start_9
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/wipeout/txt_flight_time_label_"

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

    .line 519
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 520
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 522
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v7, "/styles/wipeout/txt_flight_time_label.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 524
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 525
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 529
    if-eqz v5, :cond_e

    .line 530
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 534
    :cond_e
    :goto_c
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Flight time label --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Flight time value ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-wide v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->dataDuration:D

    double-to-long v2, v2

    invoke-static {v2, v3}, Lcom/muvee/mvdronecomposer/theme/wipeout;->convertSecondsToHMmSs(J)Ljava/lang/String;

    move-result-object v2

    .line 540
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 541
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 542
    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->B:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 543
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 544
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 545
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 546
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 548
    sget v5, Lcom/muvee/mvdronecomposer/theme/wipeout;->A:I

    sget v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->z:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 549
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 551
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 552
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 553
    sget v8, Lcom/muvee/mvdronecomposer/theme/wipeout;->z:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 554
    const/high16 v9, 0x41a00000    # 20.0f

    .line 556
    sget-object v10, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "::makeResource:: bgFlightTimeValueHeight: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v14, Lcom/muvee/mvdronecomposer/theme/wipeout;->z:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ", bgFlightTimeValueWidth: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v14, Lcom/muvee/mvdronecomposer/theme/wipeout;->A:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ", textFlightTimeValueHeight: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", textFlightTimeValueWidth: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", offsetFlightTimeValueHeight: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", offsetFlightTimeValueWidth: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->z:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    invoke-virtual {v6, v2, v9, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 563
    :try_start_a
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/wipeout/txt_flight_time_value_"

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

    .line 565
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 566
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v5, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 568
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v7, "/styles/wipeout/txt_flight_time_value.png"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 569
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 570
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 571
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 575
    if-eqz v5, :cond_f

    .line 576
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 580
    :cond_f
    :goto_d
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: Flight time value --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: map trace ++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    sget v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->D:I

    sget v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->C:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/muvee/mvdronecomposer/theme/diagonal;->getBitmapFromURL(IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 586
    if-eqz v3, :cond_1b

    .line 588
    :try_start_b
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/styles/wipeout/img_map_trace_"

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

    .line 590
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 591
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v3, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 593
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v7, "/styles/wipeout/img_map_trace.png"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 594
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 595
    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 596
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 600
    if-eqz v3, :cond_10

    .line 601
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 663
    :cond_10
    :goto_e
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: map trace --"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

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

    .line 666
    return-void

    .line 208
    :catch_1
    move-exception v2

    .line 209
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 211
    if-eqz v7, :cond_7

    .line 212
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_5

    .line 211
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_11

    .line 212
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 213
    :cond_11
    throw v2

    .line 254
    :catch_2
    move-exception v2

    .line 255
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 257
    if-eqz v5, :cond_8

    .line 258
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_6

    .line 257
    :catchall_1
    move-exception v2

    if-eqz v5, :cond_12

    .line 258
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 259
    :cond_12
    throw v2

    .line 300
    :catch_3
    move-exception v2

    .line 301
    :try_start_e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 303
    if-eqz v5, :cond_9

    .line 304
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_7

    .line 303
    :catchall_2
    move-exception v2

    if-eqz v5, :cond_13

    .line 304
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 305
    :cond_13
    throw v2

    .line 345
    :catch_4
    move-exception v2

    .line 346
    :try_start_f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 348
    if-eqz v5, :cond_a

    .line 349
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_8

    .line 348
    :catchall_3
    move-exception v2

    if-eqz v5, :cond_14

    .line 349
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 350
    :cond_14
    throw v2

    .line 390
    :catch_5
    move-exception v2

    .line 391
    :try_start_10
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 393
    if-eqz v5, :cond_b

    .line 394
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_9

    .line 393
    :catchall_4
    move-exception v2

    if-eqz v5, :cond_15

    .line 394
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 395
    :cond_15
    throw v2

    .line 435
    :catch_6
    move-exception v2

    .line 436
    :try_start_11
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 438
    if-eqz v5, :cond_c

    .line 439
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_a

    .line 438
    :catchall_5
    move-exception v2

    if-eqz v5, :cond_16

    .line 439
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 440
    :cond_16
    throw v2

    .line 480
    :catch_7
    move-exception v2

    .line 481
    :try_start_12
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 483
    if-eqz v5, :cond_d

    .line 484
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_b

    .line 483
    :catchall_6
    move-exception v2

    if-eqz v5, :cond_17

    .line 484
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 485
    :cond_17
    throw v2

    .line 526
    :catch_8
    move-exception v2

    .line 527
    :try_start_13
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 529
    if-eqz v5, :cond_e

    .line 530
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_c

    .line 529
    :catchall_7
    move-exception v2

    if-eqz v5, :cond_18

    .line 530
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 531
    :cond_18
    throw v2

    .line 572
    :catch_9
    move-exception v2

    .line 573
    :try_start_14
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 575
    if-eqz v5, :cond_f

    .line 576
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_d

    .line 575
    :catchall_8
    move-exception v2

    if-eqz v5, :cond_19

    .line 576
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 577
    :cond_19
    throw v2

    .line 597
    :catch_a
    move-exception v2

    .line 598
    :try_start_15
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 600
    if-eqz v3, :cond_10

    .line 601
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_e

    .line 600
    :catchall_9
    move-exception v2

    if-eqz v3, :cond_1a

    .line 601
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 602
    :cond_1a
    throw v2

    .line 606
    :cond_1b
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v4, "/styles/diagonal/pin_a.png"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 607
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v5, "/styles/diagonal/pin_b.png"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 609
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 610
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 612
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 613
    const/4 v2, -0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 614
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 615
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 617
    sget v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->D:I

    sget v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->C:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 618
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 619
    const/16 v3, 0xb4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 621
    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    .line 622
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::makeResource:: bgMapTraceWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/muvee/mvdronecomposer/theme/wipeout;->D:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bgMapTraceHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/muvee/mvdronecomposer/theme/wipeout;->C:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    sget v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->D:I

    sget v4, Lcom/muvee/mvdronecomposer/theme/wipeout;->C:I

    invoke-static {v3, v4}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->setDrawblePointXY(II)V

    .line 624
    const/4 v3, 0x0

    move v8, v3

    :goto_f
    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    if-ge v8, v3, :cond_1c

    .line 625
    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

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

    .line 627
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

    .line 624
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto/16 :goto_f

    .line 629
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

    invoke-virtual {v2, v9, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 630
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

    .line 637
    :goto_10
    :try_start_16
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/styles/wipeout/img_map_trace_"

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

    .line 639
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 640
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v11, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 642
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/muvee/mvdronecomposer/theme/wipeout;->G:Ljava/io/File;

    const-string v6, "/styles/wipeout/img_map_trace.png"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 643
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 644
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 645
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 649
    if-eqz v11, :cond_1d

    .line 650
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 653
    :cond_1d
    if-eqz v9, :cond_1e

    .line 654
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 657
    :cond_1e
    if-eqz v10, :cond_10

    .line 658
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_e

    .line 634
    :cond_1f
    sget-object v2, Lcom/muvee/mvdronecomposer/theme/wipeout;->a:Ljava/lang/String;

    const-string v3, "::makeResource:: location data wrong!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 646
    :catch_b
    move-exception v2

    .line 647
    :try_start_17
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 649
    if-eqz v11, :cond_20

    .line 650
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 653
    :cond_20
    if-eqz v9, :cond_21

    .line 654
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 657
    :cond_21
    if-eqz v10, :cond_10

    .line 658
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_e

    .line 649
    :catchall_a
    move-exception v2

    if-eqz v11, :cond_22

    .line 650
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 653
    :cond_22
    if-eqz v9, :cond_23

    .line 654
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 657
    :cond_23
    if-eqz v10, :cond_24

    .line 658
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 659
    :cond_24
    throw v2

    :cond_25
    move-object v10, v2

    goto/16 :goto_1

    :cond_26
    move-object v9, v2

    goto/16 :goto_0
.end method
